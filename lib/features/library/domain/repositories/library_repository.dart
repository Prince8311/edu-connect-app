import 'package:dio/dio.dart';
import 'package:edu_connect/core/shared/miscellaneous/typedefs.dart';
import 'package:edu_connect/features/library/domain/models/library_model.dart';

abstract class LibraryRepository {
  FutureEither<bool?> addBook({required FormData formData});
  FutureEither<BookListModel?> getBookList({
    int? page,
    String? className,
    String? subject,
    String? search,
  });
  FutureEither<List<String>?> getClasses();
  FutureEither<List<String>?> getSubjects({String? className});
  FutureEither<bool?> addBookChapter({required FormData formData});
  FutureEither<BookChapterListModel?> getBookChapterList(
      {String? bookId, int? page});
}
