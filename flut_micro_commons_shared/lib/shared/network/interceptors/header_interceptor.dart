import 'package:dio/dio.dart';


class HeaderInterceptor extends InterceptorsWrapper {
  @override
  Future onRequest(RequestOptions options, handler) async {
    // final app = Modular.get<IAuthRepository>();
    // User currentUser = await app.getCurrentUser();

    // if (currentUser?.token?.isNotEmpty != null &&
    //     !options.path.contains("server/ping") &&
    //     !options.path.contains("/server/email-exists")) {
    //   options.headers["Authorization"] = "Bearer ${currentUser?.token}";
    // }

    options.headers["Content-type"] = "application/json";

    return handler.next(options);
  }
}
