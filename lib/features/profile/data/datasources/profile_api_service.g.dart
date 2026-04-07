// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_api_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element

class _ProfileApiService implements ProfileApiService {
  _ProfileApiService(
    this._dio, {
    this.baseUrl,
    this.errorLogger,
  }) {
    baseUrl ??= 'https://api.edu-connect.ticketbay.in/user';
  }

  final Dio _dio;

  String? baseUrl;

  final ParseErrorLogger? errorLogger;

  @override
  Future<ApiResponse<UserDetails>> getUserDetails() async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<ApiResponse<UserDetails>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
        .compose(
          _dio.options,
          '/api/account/profile-details.php',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(
            baseUrl: _combineBaseUrls(
          _dio.options.baseUrl,
          baseUrl,
        )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ApiResponse<UserDetails> _value;
    try {
      _value = ApiResponse<UserDetails>.fromJson(
        _result.data!,
        (json) => UserDetails.fromJson(json as Map<String, dynamic>),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ApiResponse<dynamic>> sendVerificationOtp(OtpResquest body) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Content-Type': 'application/json'};
    _headers.removeWhere((k, v) => v == null);
    final _data = body;
    final _options = _setStreamType<ApiResponse<dynamic>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
      contentType: 'application/json',
    )
        .compose(
          _dio.options,
          '/api/account/send-verification-otp.php',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(
            baseUrl: _combineBaseUrls(
          _dio.options.baseUrl,
          baseUrl,
        )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ApiResponse<dynamic> _value;
    try {
      _value = ApiResponse<dynamic>.fromJson(
        _result.data!,
        (json) => json as dynamic,
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ApiResponse<dynamic>> verifyOtp(OtpVerifyResquest body) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Content-Type': 'application/json'};
    _headers.removeWhere((k, v) => v == null);
    final _data = body;
    final _options = _setStreamType<ApiResponse<dynamic>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
      contentType: 'application/json',
    )
        .compose(
          _dio.options,
          '/api/account/verify-otp.php',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(
            baseUrl: _combineBaseUrls(
          _dio.options.baseUrl,
          baseUrl,
        )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ApiResponse<dynamic> _value;
    try {
      _value = ApiResponse<dynamic>.fromJson(
        _result.data!,
        (json) => json as dynamic,
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(
    String dioBaseUrl,
    String? baseUrl,
  ) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}
