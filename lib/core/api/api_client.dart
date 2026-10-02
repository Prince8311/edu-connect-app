import 'package:dio/dio.dart';
import 'package:edu_connect/core/api/end_points.dart';
import 'package:edu_connect/core/constants/constants.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'network_interceptor.dart';

final apiClientProvider = Provider<Dio>((ref) {
  final dio = Dio(
    BaseOptions(
      baseUrl: Endpoints.baseURL,
      connectTimeout: const Duration(seconds: AppConstants.connectionTimeout),
      receiveTimeout: const Duration(seconds: AppConstants.responseTimeout),
      sendTimeout: const Duration(seconds: 60),
      headers: const {'Content-Type': 'application/json'},
    ),
  );

  /// 🐞 Pretty logger (DEBUG ONLY)
  if (kDebugMode) {
    dio.interceptors.add(
      PrettyDioLogger(
        // Biometric enrollment contains the password and device secret.
        filter: (options, _) =>
            !options.uri.path.endsWith(Endpoints.biometric) &&
            !options.uri.path.endsWith(Endpoints.biometricLogin) &&
            !options.uri.path.endsWith(Endpoints.resetBiometric),
        request: true,
        requestHeader: false,
        requestBody: false,
        responseHeader: true,
        responseBody: true,
        error: false,
        compact: true,
        maxWidth: 120,
      ),
    );
  }

  /// 🔐 Auth, token attach, refresh & retry on 401
  dio.interceptors.add(NetworkInterceptor(ref, dio));

  /// 🌐 Retry requests when internet reconnects
  // Offline requests must finish so users can retry instead of waiting forever.
  ref.onDispose(() => dio.close(force: true));

  return dio;
});
