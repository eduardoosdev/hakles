import 'package:dio/dio.dart';

class NotAllowedAccessInterceptor extends InterceptorsWrapper {
  @override
  Future onResponse(
      Response response, ResponseInterceptorHandler handler) async {
    // if (response?.statusCode == HttpStatus.forbidden) {
    //   Modular.get<IAuthRepository>().logout();
    // }

    return handler.next(response);
  }

  @override
  Future onError(DioError err, ErrorInterceptorHandler handler) async {
    // if (err?.response?.statusCode == HttpStatus.forbidden) {
    //   Modular.get<IAuthRepository>().logout();
    // }

    return handler.next(err);
  }
}
