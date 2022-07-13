import 'package:dio/dio.dart';

import 'interceptors/error_handling_interceptor.dart';
import 'interceptors/header_interceptor.dart';
import 'interceptors/not_allowed_access_interceptor.dart';

class HttpClient {
  static Dio? _singleton;

  HttpClient._();

  static Dio getInstance() {
    if (_singleton == null) {
      _singleton = _newInstance('Env.getUrlBase()', 10 * 2000);
    }

    return _singleton!;
  }

  static Dio _newInstance(String url, int timeout) {
    BaseOptions options = BaseOptions(
      baseUrl: url,
      connectTimeout: timeout,
      receiveTimeout: timeout,
    );

    options.headers["Content-Type"] = "application/json";

    Dio dio = new Dio(options);

    dio.interceptors.add(HeaderInterceptor());
    dio.interceptors.add(ErrorHandlingInterceptor());
    dio.interceptors.add(NotAllowedAccessInterceptor());

    return dio;
  }

  static updateInstance(Dio dio) {
    _singleton = dio;
  }
}
