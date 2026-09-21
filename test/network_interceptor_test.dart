import 'dart:convert';
import 'dart:typed_data';
import 'package:dio/dio.dart';
import 'package:edu_connect/core/api/auth_error_policy.dart';
import 'package:edu_connect/core/api/end_points.dart';
import 'package:edu_connect/core/api/network_interceptor.dart';
import 'package:edu_connect/core/shared/helpers/local_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mocktail/mocktail.dart';

class _Storage extends Mock implements LocalDB {}

class _Adapter implements HttpClientAdapter {
  _Adapter(this.respond);
  final ResponseBody Function(RequestOptions) respond;
  @override
  Future<ResponseBody> fetch(RequestOptions options,
          Stream<Uint8List>? requestStream, Future<void>? cancelFuture) async =>
      respond(options);
  @override
  void close({bool force = false}) {}
}

ResponseBody reply(int status, Object data) =>
    ResponseBody.fromString(jsonEncode(data), status, headers: {
      Headers.contentTypeHeader: ['application/json']
    });

void main() {
  late Dio dio;
  late _Storage storage;
  late ProviderContainer container;
  setUp(() {
    storage = _Storage();
    when(() => storage.readData('authToken'))
        .thenAnswer((_) async => 'access-token');
    when(() => storage.writeData('authToken', any()))
        .thenAnswer((_) async => true);
    dio = Dio(BaseOptions(baseUrl: Endpoints.baseURL));
    container = ProviderContainer(
        overrides: [secureStorageProvider.overrideWithValue(storage)]);
    final interceptor = Provider((ref) => NetworkInterceptor(ref, dio));
    dio.interceptors.add(container.read(interceptor));
  });
  tearDown(() {
    dio.close();
    container.dispose();
  });

  test('incorrect biometric password does not refresh or change either token',
      () async {
    final paths = <String>[];
    dio.httpClientAdapter = _Adapter((options) {
      paths.add(options.uri.path);
      expect(options.headers['Authorization'], 'Bearer access-token');
      return reply(401, {
        'success': false,
        'message': 'Incorrect password. Please try again.'
      });
    });
    await expectLater(
        dio
            .post('/user${Endpoints.biometric}')
            .timeout(const Duration(seconds: 2)),
        throwsA(isA<DioException>()
            .having(isBiometricPasswordError, 'password validation', true)));
    expect(paths, ['/user${Endpoints.biometric}']);
    verifyNever(() => storage.writeData(any(), any()));
    verifyNever(() => storage.deleteData(any()));
  });

  for (final refreshStatus in [200, 401]) {
    test('empty or rejected refresh completes request: $refreshStatus',
        () async {
      var refreshes = 0;
      dio.httpClientAdapter = _Adapter((options) {
        if (options.path == Endpoints.refreshToken) {
          refreshes++;
          return ResponseBody.fromString('', refreshStatus);
        }
        return reply(401, {'message': 'Session expired'});
      });
      await expectLater(dio.get('/private').timeout(const Duration(seconds: 2)),
          throwsA(isA<DioException>()));
      expect(refreshes, 1);
      verifyNever(() => storage.deleteData(any()));
    });
  }

  test('rejected retry cannot refresh indefinitely', () async {
    var refreshes = 0;
    var requests = 0;
    dio.httpClientAdapter = _Adapter((options) {
      if (options.path == Endpoints.refreshToken) {
        refreshes++;
        return reply(200, {'newToken': 'new-access-token'});
      }
      requests++;
      return reply(401, {'message': 'Session expired'});
    });
    await expectLater(dio.get('/private').timeout(const Duration(seconds: 2)),
        throwsA(isA<DioException>()));
    expect(refreshes, 1);
    expect(requests, 2);
    verify(() => storage.writeData('authToken', 'new-access-token')).called(1);
  });

  test('concurrent expired requests share refresh and retry successfully',
      () async {
    var refreshes = 0;
    dio.httpClientAdapter = _Adapter((options) {
      if (options.path == Endpoints.refreshToken) {
        refreshes++;
        return reply(200, {'newToken': 'new-access-token'});
      }
      return options.headers['Authorization'] == 'Bearer new-access-token'
          ? reply(200, {'success': true})
          : reply(401, {'message': 'Session expired'});
    });
    final results = await Future.wait([dio.get('/one'), dio.get('/two')])
        .timeout(const Duration(seconds: 2));
    expect(results.every((response) => response.statusCode == 200), true);
    expect(refreshes, 1);
  });
}
