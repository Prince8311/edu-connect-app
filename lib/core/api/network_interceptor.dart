import 'package:edu_connect/core/api/auth_error_policy.dart';
import 'dart:async';
import 'dart:io';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:edu_connect/core/api/end_points.dart';
import 'package:edu_connect/core/shared/widgets/toast.dart';
import 'package:edu_connect/features/auth/presentation/providers/auth_token_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NetworkInterceptor extends Interceptor {
  final Ref ref;
  final Dio dio;
  NetworkInterceptor(this.ref, this.dio);

  Future<bool>? _refreshing;
  static const _retried = 'session_refresh_retried';

  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    try {
      final token = await ref.read(authTokenProvider.notifier).getToken();
      if (token != null) options.headers['Authorization'] = 'Bearer $token';
      handler.next(options);
    } catch (error) {
      handler.reject(DioException(requestOptions: options, error: error));
    }
  }

  @override
  Future<void> onError(
      DioException err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode != 401 ||
        err.requestOptions.uri.path.endsWith(Endpoints.biometricLogin) ||
        isBiometricPasswordError(err) ||
        err.requestOptions.uri.path.endsWith(Endpoints.refreshToken) ||
        err.requestOptions.extra[_retried] == true) {
      handler.next(err);
      return;
    }

    try {
      final refreshing = _refreshing ??= _refreshToken();
      final bool refreshed;
      try {
        refreshed = await refreshing;
      } finally {
        if (identical(_refreshing, refreshing)) _refreshing = null;
      }
      if (!refreshed) {
        handler.next(err);
        return;
      }
      err.requestOptions.extra[_retried] = true;
      final response = await dio.fetch<dynamic>(err.requestOptions);
      handler.resolve(response);
    } on DioException catch (error) {
      handler.next(error);
    } catch (_) {
      handler.next(err);
    }
  }

  Future<bool> _refreshToken() async {
    try {
      final response = await dio.get<dynamic>(Endpoints.refreshToken);
      final data = response.data;
      final token = data is Map ? data['newToken'] : null;
      if (token is String && token.trim().isNotEmpty) {
        await ref.read(authTokenProvider.notifier).saveToken(token);
        return true;
      }
    } catch (_) {
      // A failed refresh must finish the original request, never refresh itself.
    }
    return false;
  }
}

class RetryOnConnectionChangeInterceptor extends Interceptor {
  final DioConnectivityRequestRetrier requestRetrier;

  RetryOnConnectionChangeInterceptor({
    required this.requestRetrier,
  });

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    if (!await _shouldRetry(err)) {
      handler.next(err);
      return;
    }
    try {
      var closeToast = errorToast(
        "Oops! No Internet",
        message: "Please check your network connection",
        duration: const Duration(seconds: 120),
        dissmissable: false,
      );
      //
      handler.resolve(
        await requestRetrier.scheduleRequestRetry(err.requestOptions),
      );
      closeToast.call();
    } catch (e) {
      handler.next(err);
    }
  }

  Future<bool> _shouldRetry(DioException err) async {
    var connectivityResult = await Connectivity().checkConnectivity();
    var notConnected = connectivityResult == ConnectivityResult.none;
    return err.type == DioExceptionType.connectionError &&
        err.error != null &&
        err.error is SocketException &&
        notConnected;
  }
}

class DioConnectivityRequestRetrier {
  final Dio dio;
  final Connectivity connectivity;

  DioConnectivityRequestRetrier({
    required this.dio,
    required this.connectivity,
  });

  Future<Response> scheduleRequestRetry(RequestOptions requestOptions) async {
    StreamSubscription? streamSubscription;
    final responseCompleter = Completer<Response>();
    debugPrint("Scheduling a retry request on Connection back again");
    streamSubscription = connectivity.onConnectivityChanged.listen(
      (connectivityResult) async {
        // We're connected either to WiFi or mobile data
        if (connectivityResult != ConnectivityResult.none) {
          // Ensure that only one retry happens per connectivity change by cancelling the listener
          streamSubscription?.cancel();

          debugPrint(
              " ---- Making a new Request with the failed request's data ---- ");
          // Copy & paste the failed request's data into the new request
          responseCompleter.complete(
            dio.request(
              requestOptions.path,
              cancelToken: requestOptions.cancelToken,
              data: requestOptions.data,
              onReceiveProgress: requestOptions.onReceiveProgress,
              onSendProgress: requestOptions.onSendProgress,
              queryParameters: requestOptions.queryParameters,
              options: Options(
                method: requestOptions.method,
                contentType: requestOptions.contentType,
                headers: requestOptions.headers,
                extra: requestOptions.extra,
                sendTimeout: requestOptions.sendTimeout,
              ),
            ),
          );
        }
      },
    );
    return responseCompleter.future;
  }
}
