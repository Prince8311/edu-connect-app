import 'package:edu_connect/core/api/api_handler.dart';
import 'package:edu_connect/core/shared/miscellaneous/typedefs.dart';
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
  FutureEither<BookListModel?> getBookList({int? page}) {
    return apiHandler<BookListModel?>(
      () async {
        final res = await _apiService.getBookList(page: page);
        return res.data;
      },
    );
  }
}
