import 'package:dio/dio.dart';

class ErrorHandlingInterceptor extends InterceptorsWrapper {
  @override
  Future onResponse(
    Response response,
    ResponseInterceptorHandler handler,
  ) async {
    if (response.statusCode == 200 || response.statusCode == 201) {
      return handler.next(response);
    }

    throw DioError(
      error: null,
      requestOptions: response.requestOptions,
      response: response,
      type: DioErrorType.other,
    );
  }

  @override
  Future onError(DioError err, ErrorInterceptorHandler handler) async {
    err = _formatError(err);

    return handler.next(err);
  }

  DioError _formatError(DioError e) {
    dynamic message;

    if (e.type == DioErrorType.cancel) {
      message = "Solicitação cancelada";
    } else if (e.type == DioErrorType.sendTimeout ||
        e.type == DioErrorType.receiveTimeout ||
        e.type == DioErrorType.connectTimeout) {
      message =
          "A solicitação atingiu o tempo limite, verifique a conexão da sua rede e tente novamente";
    } else if (e.type == DioErrorType.other) {
      message =
          "Não foi possível conectar-se ao servidor, verifique a conexão da sua rede e tente novamente";
    } else if (e.type == DioErrorType.response) {
      message = _getMessageErrorResponseServer(e);
    }

    return DioError(
      error: message,
      requestOptions: e.requestOptions,
      response: e.response,
      type: e.type,
    );
  }

  _getMessageErrorResponseServer(DioError e) {
    dynamic message;
    message = e.response?.data;
    if (message == null || message.isEmpty) {
      message = e.message;
    }

    return message;
  }
}
