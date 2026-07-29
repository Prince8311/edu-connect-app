import 'dart:async';

import 'package:dio/dio.dart';
import 'package:edu_connect/core/api/error_handler.dart';
import 'package:edu_connect/core/shared/widgets/api_list_widget.dart';
import 'package:edu_connect/features/library/data/repositories/library_repo_impl.dart';
import 'package:edu_connect/features/library/domain/models/library_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'library_provider.g.dart';

@riverpod
Future<bool?> addBook(
  Ref ref, {
  required FormData formData,
}) async {
  final result =
      await ref.read(libraryRepoProvider).addBook(formData: formData);

  return result.fold(
    (l) {
      ApiError.commonErrorHandler(l);
      return null;
    },
    (r) => r,
  );
}

@riverpod
Future<List<String>?> libraryClasses(Ref ref) async {
  final result = await ref.read(libraryRepoProvider).getClasses();

  return result.fold(
    (l) {
      ApiError.commonErrorHandler(l);
      return null;
    },
    (r) => r,
  );
}

@riverpod
Future<List<String>?> librarySubjects(
  Ref ref, {
  String? className,
}) async {
  final result =
      await ref.read(libraryRepoProvider).getSubjects(className: className);

  return result.fold(
    (l) {
      ApiError.commonErrorHandler(l);
      return null;
    },
    (r) => r,
  );
}

final libraryPageProvider = StateProvider<int>((ref) => 1);

final libraryCanLoadMoreProvider = StateProvider<bool>(
  (ref) => true,
);

final libraryBooksNotifierProvider =
    StateNotifierProvider.autoDispose<LibraryBooksNotifier, LibraryBooksState>(
  (ref) => LibraryBooksNotifier(ref),
);

class LibraryBooksNotifier extends StateNotifier<LibraryBooksState>
    with PaginationNotifier<LibraryBooksState> {
  LibraryBooksNotifier(this.ref) : super(const LibraryBooksState()) {
    Future.microtask(loadData);
  }

  final Ref ref;

  @override
  Future<void> loadData() async {
    if (!mounted) return;
    if (state.isLoading) return;

    ref.read(libraryPageProvider.notifier).state = 1;
    ref.read(libraryCanLoadMoreProvider.notifier).state = true;

    state = state.copyWith(
      isLoading: true,
      isLoadingMore: false,
      errorMessage: null,
    );

    final result = await ref.read(libraryRepoProvider).getBookList(page: 1);

    if (!mounted) return;

    result.fold(
      (error) {
        if (!mounted) return;
        ApiError.commonErrorHandler(error);
        ref.read(libraryCanLoadMoreProvider.notifier).state = false;
        state = state.copyWith(
          isLoading: false,
          errorMessage: 'Failed to load books',
        );
      },
      (data) {
        if (!mounted) return;
        final list = data?.list ?? const <BookItemModel>[];
        final total = data?.totalCount;
        final page = data?.currentPage ?? 1;

        final canLoadMore = _resolveCanLoadMore(
          totalCount: total,
          currentItemsLength: list.length,
          latestPageItemsLength: list.length,
        );

        ref.read(libraryPageProvider.notifier).state = page;
        ref.read(libraryCanLoadMoreProvider.notifier).state = canLoadMore;

        state = state.copyWith(
          books: list,
          totalCount: total,
          currentPage: page,
          isLoading: false,
          isLoadingMore: false,
          errorMessage: null,
        );
      },
    );
  }

  @override
  Future<void> loadMore() async {
    if (!mounted) return;
    if (state.isLoading || state.isLoadingMore) return;
    if (!ref.read(libraryCanLoadMoreProvider)) return;

    final nextPage = ref.read(libraryPageProvider);

    state = state.copyWith(isLoadingMore: true, errorMessage: null);

    final result =
        await ref.read(libraryRepoProvider).getBookList(page: nextPage);

    if (!mounted) return;

    result.fold(
      (error) {
        if (!mounted) return;
        ApiError.commonErrorHandler(error);
        ref.read(libraryPageProvider.notifier).update(
              (page) => page > 1 ? page - 1 : 1,
            );
        state = state.copyWith(
          isLoadingMore: false,
          errorMessage: 'Failed to load more books',
        );
      },
      (data) {
        if (!mounted) return;
        final fetched = data?.list ?? const <BookItemModel>[];
        final merged = [...state.books, ...fetched];
        final total = data?.totalCount ?? state.totalCount;
        final page = data?.currentPage ?? nextPage;

        final canLoadMore = _resolveCanLoadMore(
          totalCount: total,
          currentItemsLength: merged.length,
          latestPageItemsLength: fetched.length,
        );

        ref.read(libraryPageProvider.notifier).state = page;
        ref.read(libraryCanLoadMoreProvider.notifier).state = canLoadMore;

        state = state.copyWith(
          books: merged,
          totalCount: total,
          currentPage: page,
          isLoadingMore: false,
          errorMessage: null,
        );
      },
    );
  }

  @override
  Future<void> refresh() async {
    if (!mounted) return;
    if (state.isLoading) return;
    await loadData();
  }

  bool _resolveCanLoadMore({
    required int? totalCount,
    required int currentItemsLength,
    required int latestPageItemsLength,
  }) {
    if (totalCount != null) {
      return currentItemsLength < totalCount;
    }

    return latestPageItemsLength > 0;
  }
}

class LibraryBooksState {
  const LibraryBooksState({
    this.books = const [],
    this.totalCount,
    this.currentPage = 1,
    this.isLoading = false,
    this.isLoadingMore = false,
    this.errorMessage,
  });

  final List<BookItemModel> books;
  final int? totalCount;
  final int currentPage;
  final bool isLoading;
  final bool isLoadingMore;
  final String? errorMessage;

  LibraryBooksState copyWith({
    List<BookItemModel>? books,
    int? totalCount,
    int? currentPage,
    bool? isLoading,
    bool? isLoadingMore,
    String? errorMessage,
  }) {
    return LibraryBooksState(
      books: books ?? this.books,
      totalCount: totalCount ?? this.totalCount,
      currentPage: currentPage ?? this.currentPage,
      isLoading: isLoading ?? this.isLoading,
      isLoadingMore: isLoadingMore ?? this.isLoadingMore,
      errorMessage: errorMessage,
    );
  }
}
