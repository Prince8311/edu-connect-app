import 'package:dio/dio.dart';
import 'package:edu_connect/core/router/app_router.dart';
import 'package:edu_connect/core/shared/miscellaneous/failure.dart';
import 'package:edu_connect/core/shared/widgets/toast.dart';
import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/web.dart';

class ApiError implements Exception {
  ApiError.fromDioError(DioException dioError) {
    try {
      if (dioError.response?.statusCode == 503) {
        handleMaintenance();
        failure = Failure(
          error: "Opps! We're under maintenance",
          message: 'Please try again later.',
        );
      }
      switch (dioError.type) {
        case DioExceptionType.cancel:
          error = 'Request to API server was cancelled';
          message = 'Please try again.';
          failure = Failure(error: error, message: message);
        case DioExceptionType.connectionTimeout:
          error = 'Connection timeout with API server';
          message = 'Please try again.';
          failure = Failure(error: error, message: message);
        case DioExceptionType.badResponse:
          final statusCode = dioError.response?.statusCode;
          final responseData = dioError.response?.data;

          final statusMessage = _handleError(statusCode);
          final apiMessage = responseData?['message'];

          if (statusCode == 503) {
            handleMaintenance();
          } else if (statusCode == 401) {
            handleUnAuthorized();
          }

          failure = Failure(
            error: statusMessage ?? 'Something went wrong',
            message: apiMessage ?? 'Please try again.',
          );
          break;
        case DioExceptionType.sendTimeout:
          error = 'Send timeout in connection with API server';
          message = 'Please try again.';
          failure = Failure(error: error, message: message);
        case DioExceptionType.unknown:
          debugPrint('Error: ${dioError.error}');
          debugPrint('Error Message: ${dioError.message}');
          debugPrint('Error Response: ${dioError.response}');
          debugPrint('Error Type: ${dioError.type}');
          debugPrint('Error Stacktrace:  ${dioError.stackTrace}');
          if (dioError.message?.contains('SocketException') ?? false) {
            error = 'No Internet';
            message = 'Please try again.';
            failure = Failure(error: error, message: message);
            break;
          }
          error = 'Unexpected error occurred';
          message = 'Please try again later.';
          failure = Failure(error: error, message: message);
        default:
          error = 'Something went wrong';
          message = 'Please try again.';
          failure = Failure(error: error, message: message);
          break;
      }
      errorToast(
        failure.error,
        message: failure.message ?? 'Please try again',
        duration: kDebugMode ? const Duration(seconds: 15) : null,
      );
    } catch (e) {
      Logger().e(e);
      errorToast(
        'Something went wrong!',
        message: failure.message ?? 'Please try again',
        duration: kDebugMode ? const Duration(seconds: 15) : null,
      );
    }
  }
  late String? error;
  String? message;
  Failure failure = Failure(error: 'Something went wrong!');

  String? _handleError(int? statusCode) {
    return switch (statusCode) {
      400 => 'Bad request',
      401 => 'Unauthorized',
      403 => 'Forbidden',
      404 => 'Not Found',
      500 => 'Internal server error',
      502 => 'Bad gateway',
      503 => 'Service Unavailable',
      _ => null,
    };
  }

  void handleMaintenance() {
    var currentLocation = '';
    if (rootNavigatorKey.currentState?.context != null) {
      currentLocation = GoRouterState.of(rootNavigatorKey.currentState!.context)
          .name
          .toString();

      if (currentLocation != RouteName.maintenance) {
        rootNavigatorKey.currentState?.context.goNamed(RouteName.maintenance);
      }
    }
  }

  void handleUnAuthorized() {
    var context = rootNavigatorKey.currentContext;
    if (context != null) {
      AuthRoute().go(context);
    }
  }

  @override
  String toString() => error ?? '';

  Failure getFailure() => failure;
  static Null commonErrorHandler(Failure l,
      {Function()? handler, bool showErrorToast = true}) {
    if (showErrorToast) errorToast(l.error, message: l.message);
    handler?.call();
    return null;
  }
}

class AppErrorHandler {
  static void commonErrorHandler(Failure l, {Function()? handler}) {
    debugPrint('Failure message ${l.message}');
    debugPrint('Failure error ${l.error}');
    errorToast(l.error, message: l.message);
    handler?.call();
    return;
  }
}
