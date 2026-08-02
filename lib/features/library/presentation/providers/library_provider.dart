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

// =================== Library Books State Management ===================

final libraryPageProvider = StateProvider<int>((ref) => 1);

final libraryCanLoadMoreProvider = StateProvider<bool>(
  (ref) => true,
);

final librarySelectedClassesProvider =
    StateProvider<List<String>>((ref) => const <String>[]);

final librarySelectedSubjectsProvider =
    StateProvider<List<String>>((ref) => const <String>[]);

final libraryBookSearchProvider = StateProvider<String>((ref) => '');

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

    final filterClass = _toQueryValue(ref.read(librarySelectedClassesProvider));
    final filterSubject =
        _toQueryValue(ref.read(librarySelectedSubjectsProvider));
    final search = _toSearchQuery(ref.read(libraryBookSearchProvider));

    ref.read(libraryPageProvider.notifier).state = 1;
    ref.read(libraryCanLoadMoreProvider.notifier).state = true;

    state = state.copyWith(
      isLoading: true,
      isLoadingMore: false,
      errorMessage: null,
    );

    final result = await ref.read(libraryRepoProvider).getBookList(
          page: 1,
          className: filterClass,
          subject: filterSubject,
          search: search,
        );

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

    final filterClass = _toQueryValue(ref.read(librarySelectedClassesProvider));
    final filterSubject =
        _toQueryValue(ref.read(librarySelectedSubjectsProvider));
    final search = _toSearchQuery(ref.read(libraryBookSearchProvider));

    final nextPage = ref.read(libraryPageProvider);

    state = state.copyWith(isLoadingMore: true, errorMessage: null);

    final result = await ref.read(libraryRepoProvider).getBookList(
          page: nextPage,
          className: filterClass,
          subject: filterSubject,
          search: search,
        );

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

  String? _toQueryValue(List<String> rawValues) {
    final normalized = rawValues
        .map((e) => e.trim())
        .where((e) => e.isNotEmpty)
        .toSet()
        .toList();

    if (normalized.isEmpty) return null;
    return normalized.join(',');
  }

  String? _toSearchQuery(String rawSearch) {
    final normalized = rawSearch.trim();
    if (normalized.isEmpty) return null;
    return normalized;
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

// =================== Library Book Chapters State Management ===================

final libraryChapterPageProvider =
    StateProvider.family<int, String>((ref, bookId) => 1);

final libraryChapterCanLoadMoreProvider =
    StateProvider.family<bool, String>((ref, bookId) => true);

final libraryBookChaptersNotifierProvider = StateNotifierProvider.autoDispose
    .family<LibraryBookChaptersNotifier, LibraryBookChaptersState, String>(
  (ref, bookId) => LibraryBookChaptersNotifier(ref, bookId),
);

class LibraryBookChaptersNotifier
    extends StateNotifier<LibraryBookChaptersState>
    with PaginationNotifier<LibraryBookChaptersState> {
  LibraryBookChaptersNotifier(this.ref, this.bookId)
      : super(const LibraryBookChaptersState()) {
    Future.microtask(loadData);
  }

  final Ref ref;
  final String bookId;

  @override
  Future<void> loadData() async {
    if (!mounted) return;
    if (state.isLoading) return;

    if (bookId.trim().isEmpty) {
      ref.read(libraryChapterCanLoadMoreProvider(bookId).notifier).state =
          false;
      state = state.copyWith(
        isLoading: false,
        isLoadingMore: false,
        errorMessage: 'Invalid book id',
      );
      return;
    }

    ref.read(libraryChapterPageProvider(bookId).notifier).state = 1;
    ref.read(libraryChapterCanLoadMoreProvider(bookId).notifier).state = true;

    state = state.copyWith(
      isLoading: true,
      isLoadingMore: false,
      errorMessage: null,
    );

    final result = await ref
        .read(libraryRepoProvider)
        .getBookChapterList(bookId: bookId, page: 1);

    if (!mounted) return;

    result.fold(
      (error) {
        if (!mounted) return;
        ApiError.commonErrorHandler(error);
        ref.read(libraryChapterCanLoadMoreProvider(bookId).notifier).state =
            false;
        state = state.copyWith(
          isLoading: false,
          errorMessage: 'Failed to load chapters',
        );
      },
      (data) {
        if (!mounted) return;
        final list = data?.list ?? const <BookChapterItemModel>[];
        final total = data?.totalCount;
        final page = data?.currentPage ?? 1;

        final canLoadMore = _resolveCanLoadMore(
          totalCount: total,
          currentItemsLength: list.length,
          latestPageItemsLength: list.length,
        );

        ref.read(libraryChapterPageProvider(bookId).notifier).state = page;
        ref.read(libraryChapterCanLoadMoreProvider(bookId).notifier).state =
            canLoadMore;

        state = state.copyWith(
          chapters: list,
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
    if (!ref.read(libraryChapterCanLoadMoreProvider(bookId))) return;

    final nextPage = ref.read(libraryChapterPageProvider(bookId));

    state = state.copyWith(isLoadingMore: true, errorMessage: null);

    final result = await ref
        .read(libraryRepoProvider)
        .getBookChapterList(bookId: bookId, page: nextPage);

    if (!mounted) return;

    result.fold(
      (error) {
        if (!mounted) return;
        ApiError.commonErrorHandler(error);
        ref.read(libraryChapterPageProvider(bookId).notifier).update(
              (page) => page > 1 ? page - 1 : 1,
            );
        state = state.copyWith(
          isLoadingMore: false,
          errorMessage: 'Failed to load more chapters',
        );
      },
      (data) {
        if (!mounted) return;
        final fetched = data?.list ?? const <BookChapterItemModel>[];
        final merged = [...state.chapters, ...fetched];
        final total = data?.totalCount ?? state.totalCount;
        final page = data?.currentPage ?? nextPage;

        final canLoadMore = _resolveCanLoadMore(
          totalCount: total,
          currentItemsLength: merged.length,
          latestPageItemsLength: fetched.length,
        );

        ref.read(libraryChapterPageProvider(bookId).notifier).state = page;
        ref.read(libraryChapterCanLoadMoreProvider(bookId).notifier).state =
            canLoadMore;

        state = state.copyWith(
          chapters: merged,
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

class LibraryBookChaptersState {
  const LibraryBookChaptersState({
    this.chapters = const [],
    this.totalCount,
    this.currentPage = 1,
    this.isLoading = false,
    this.isLoadingMore = false,
    this.errorMessage,
  });

  final List<BookChapterItemModel> chapters;
  final int? totalCount;
  final int currentPage;
  final bool isLoading;
  final bool isLoadingMore;
  final String? errorMessage;

  LibraryBookChaptersState copyWith({
    List<BookChapterItemModel>? chapters,
    int? totalCount,
    int? currentPage,
    bool? isLoading,
    bool? isLoadingMore,
    String? errorMessage,
  }) {
    return LibraryBookChaptersState(
      chapters: chapters ?? this.chapters,
      totalCount: totalCount ?? this.totalCount,
      currentPage: currentPage ?? this.currentPage,
      isLoading: isLoading ?? this.isLoading,
      isLoadingMore: isLoadingMore ?? this.isLoadingMore,
      errorMessage: errorMessage,
    );
  }
}

@riverpod
Future<bool?> addBookChapter(
  Ref ref, {
  required FormData formData,
}) async {
  final result =
      await ref.read(libraryRepoProvider).addBookChapter(formData: formData);

  return result.fold(
    (l) {
      ApiError.commonErrorHandler(l);
      return null;
    },
    (r) => r,
  );
}
