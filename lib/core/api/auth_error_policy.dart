import 'package:dio/dio.dart';
import 'package:edu_connect/core/api/end_points.dart';

// The setup endpoint uses 401 for password validation as well as session errors.
bool isBiometricPasswordError(DioException error) {
  final data = error.response?.data;
  return error.response?.statusCode == 401 &&
      error.requestOptions.uri.path.endsWith(Endpoints.biometric) &&
      data is Map &&
      data['message'] is String &&
      (data['message'] as String)
          .toLowerCase()
          .startsWith('incorrect password');
}
