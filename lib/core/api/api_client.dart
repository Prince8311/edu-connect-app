import 'package:dio/dio.dart';
import 'package:edu_connect/core/api/end_points.dart';
import 'package:edu_connect/core/constants/constants.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'network_interceptor.dart';

final apiClientProvider = Provider<Dio>((ref) {
  final dio = Dio(
    BaseOptions(
      baseUrl: Endpoints.baseURL,
      connectTimeout: const Duration(seconds: AppConstants.connectionTimeout),
      receiveTimeout: const Duration(seconds: AppConstants.responseTimeout),
      headers: const {
        'Content-Type': 'application/json',
      },
    ),
  );

  /// 🐞 Pretty logger (DEBUG ONLY)
  if (kDebugMode) {
    dio.interceptors.add(
      PrettyDioLogger(
        request: true,
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
        responseBody: true,
        error: true,
        compact: true,
        maxWidth: 90,
      ),
    );
  }

  /// 🔐 Auth, token attach, refresh & retry on 401
  dio.interceptors.add(NetworkInterceptor(ref, dio));

  /// 🌐 Retry requests when internet reconnects
  dio.interceptors.add(
    RetryOnConnectionChangeInterceptor(
      requestRetrier: DioConnectivityRequestRetrier(
        dio: dio,
        connectivity: Connectivity(),
      ),
    ),
  );

  return dio;
});
