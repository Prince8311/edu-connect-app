import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:edu_connect/core/api/error_handler.dart';
import 'package:edu_connect/core/shared/miscellaneous/failure.dart';
import 'package:fpdart/fpdart.dart';

Future<Either<Failure, T>> apiHandler<T>(Future<T> Function() apiFunc) async {
  try {
    var result = await apiFunc();
    return right(result);
  } on DioException catch (e) {
    Failure failure = ApiError.fromDioError(e).getFailure();
    return left(failure);
  } catch (e) {
    log('Exception Occured at Error Handler', error: e);
    return left(Failure(error: e.toString()));
  }
}
