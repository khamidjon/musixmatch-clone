import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

const _baseHeaders = {
  'Content-Type': 'application/json',
  'charset': 'utf-8',
};

class UnauthorizedRequestInterceptor extends QueuedInterceptor {
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) {
    options.headers.addAll(_baseHeaders);
    options.queryParameters.addAll({'apikey': dotenv.get('API_KEY')});
    log('${options.method} >>> ${options.uri}');
    log('Query parameters: ${options.queryParameters}');
    log('Request data: ${options.data}');
    super.onRequest(options, handler);
  }

  @override
  void onResponse(
    Response response,
    ResponseInterceptorHandler handler,
  ) {
    log('${response.requestOptions.method} <<< ${response.requestOptions.uri}');
    log('Response data: ${response.data}');
    final customResponse = Response(
      requestOptions: response.requestOptions,
      headers: response.headers,
      extra: response.extra,
      statusCode: response.statusCode,
      statusMessage: response.statusMessage,
      data: jsonDecode(response.data)['message']['body'],
      redirects: response.redirects,
      isRedirect: response.isRedirect,
    );
    super.onResponse(customResponse, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    log('${err.requestOptions.method} <<< ${err.requestOptions.uri}');
    log('Error data: ${err.response?.data}');
    handler.next(err);
  }
}

// class AuthorizedRequestInterceptor extends UnauthorizedRequestInterceptor {
//   AuthorizedRequestInterceptor(this._tokenRepository);
//
//   final TokenRepository _tokenRepository;
//
//   @override
//   void onRequest(
//     RequestOptions options,
//     RequestInterceptorHandler handler,
//   ) async {
//     try {
//       options.headers[HttpHeaders.authorizationHeader] =
//           await _tokenRepository.getBearerToken();
//       super.onRequest(options, handler);
//     } on DioException catch (e) {
//       handler.reject(e);
//     } on Object catch (e) {
//       log(e.toString());
//     }
//   }
//
//   @override
//   void onError(DioException err, ErrorInterceptorHandler handler) {
//     if (err.response?.statusCode == HttpStatus.unauthorized) {
//       // TODO: refresh token when access token expired
//     } else {
//       super.onError(err, handler);
//     }
//   }
// }
