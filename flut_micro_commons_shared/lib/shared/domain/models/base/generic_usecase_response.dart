import '../../../../flut_micro_commons_shared.dart';

class GenericUsecaseResponse {
  dynamic _message;
  dynamic data;
  bool success;

  GenericUsecaseResponse({
    required this.success,
    message,
    this.data,
  }) {
    if (message is GenericException) {
      _message = message.message;
    } else if (message is Exception) {
      _message =
          'Ops.. aconteceu algum erro, verifique a conexão da sua rede e tente novamente';
    } else if (message is String) {
      _message = message;
    }
  }

  String? get message => _message;
}
