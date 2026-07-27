import 'package:dio/dio.dart' hide Headers;
import 'package:edu_connect/core/api/api_client.dart';
import 'package:edu_connect/core/api/end_points.dart';
import 'package:edu_connect/core/shared/models/api_response_model.dart';
import 'package:edu_connect/features/library/domain/models/library_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:retrofit/retrofit.dart';

part 'library_api_service.g.dart';

final libraryApiServiceProvider = Provider<LibraryApiService>((ref) {
  return LibraryApiService(ref.read(apiClientProvider));
});

@RestApi(baseUrl: Endpoints.apiURL)
abstract class LibraryApiService {
  factory LibraryApiService(Dio dio, {String baseUrl}) = _LibraryApiService;

  @GET(Endpoints.bookList)
  Future<ApiResponse<BookListModel>> getBookList({
    @Query("page") int? page,
  });
}
