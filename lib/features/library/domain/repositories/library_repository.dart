import 'package:edu_connect/core/shared/miscellaneous/typedefs.dart';
import 'package:edu_connect/features/library/domain/models/library_model.dart';

abstract class LibraryRepository {
  FutureEither<BookListModel?> getBookList({int? page});
}
