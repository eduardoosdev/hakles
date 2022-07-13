class GenericException implements Exception {
  dynamic _message;

  GenericException(message) {
    if (message is GenericException) {
      _message = message.message;
    } else if (message is Exception) {
      _message = message.toString();
    } else if (message is String) {
      _message = message;
    }

    if (_message == null) {
      _message =
          'Ops.. aconteceu algum erro, verifique a conexão da sua rede e tente novamente';
    }
  }

  String? get message => _message;
}
