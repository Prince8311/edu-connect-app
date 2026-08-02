import 'package:edu_connect/core/api/api_handler.dart';
import 'package:edu_connect/core/shared/miscellaneous/typedefs.dart';
import 'package:edu_connect/core/shared/widgets/toast.dart';
import 'package:dio/dio.dart';
import 'package:edu_connect/features/library/data/datasources/library_api_service.dart';
import 'package:edu_connect/features/library/domain/models/library_model.dart';
import 'package:edu_connect/features/library/domain/repositories/library_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final libraryRepoProvider = Provider<LibraryRepository>((ref) {
  return LibraryRepoImpl(ref, ref.read(libraryApiServiceProvider));
});

class LibraryRepoImpl extends LibraryRepository {
  final LibraryApiService _apiService;
  final Ref ref;

  LibraryRepoImpl(this.ref, LibraryApiService apiService)
      : _apiService = apiService;

  @override
  FutureEither<bool?> addBook({required FormData formData}) {
    return apiHandler<bool?>(
      () async {
        final res = await _apiService.addBook(formData);

        successToast(res.message);
        return res.success;
      },
    );
  }

  @override
  FutureEither<BookListModel?> getBookList({
    int? page,
    String? className,
    String? subject,
    String? search,
  }) {
    return apiHandler<BookListModel?>(
      () async {
        final res = await _apiService.getBookList(
          page: page,
          className: className,
          subject: subject,
          search: search,
        );
        return res.data;
      },
    );
  }

  @override
  FutureEither<List<String>?> getClasses() {
    return apiHandler<List<String>?>(
      () async {
        final res = await _apiService.getClasses();
        return res.data;
      },
    );
  }

  @override
  FutureEither<List<String>?> getSubjects({String? className}) {
    return apiHandler<List<String>?>(
      () async {
        final res = await _apiService.getSubjects(className: className);
        return res.data;
      },
    );
  }

  @override
  FutureEither<bool?> addBookChapter({required FormData formData}) {
    return apiHandler<bool?>(
      () async {
        final res = await _apiService.addBookChapter(formData);

        successToast(res.message);
        return res.success;
      },
    );
  }

  @override
  FutureEither<BookChapterListModel?> getBookChapterList(
      {String? bookId, int? page}) {
    return apiHandler<BookChapterListModel?>(
      () async {
        final res =
            await _apiService.getBookChapterList(bookId: bookId, page: page);
        return res.data;
      },
    );
  }
}
