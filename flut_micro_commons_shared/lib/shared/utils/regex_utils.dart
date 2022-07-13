import '../extensions/string_extension.dart';

class RegexUtils {
  static const String _regexIp =
      "^((http|https):\/\/)?(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])(:[0-9]+)?\$";
  static const String _regexDomain =
      "^(http:\/\/www\.|https:\/\/www\.|http:\/\/|https:\/\/)?[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?\$";
  static const String _regexHttpOrHttps = "^(http|https)://.*\$";
  static const String _regexEmail =
      "[a-z0-9!#\$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#\$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?";
  static const String _regexFullName = "[A-Z][a-z].* [A-Z][a-z].*";

  RegexUtils._();

  static isValidIp(String text) {
    return _test(_regexIp, text);
  }

  static isValidCellPhone(String text) {
    final number = text.justTheNumbers();
    return number.length == 11;
  }

  static isValidToken(String text) {
    final number = text.justTheNumbers();
    return number.length == 6;
  }

  static isValidPassword(String text) {
    return text.length >= 6;
  }

  static isValidDomain(String text) {
    return _test(_regexDomain, text);
  }

  static isValidFullname(String text) {
    return _test(_regexFullName, text);
  }

  static bool isValidCode(String value) {
    return value.length == 6;
  }

  static isValidNickname(String text) {
    if (text.isEmpty) {
      return false;
    }
    return true;
  }

  static isValidEmail(String text) {
    return _test(_regexEmail, text);
  }

  static containsHttpOrHttps(String text) {
    return _test(_regexHttpOrHttps, text);
  }

  static String? extractYoutubeId(String? url) {
    if (url == null) return null;

    if (!url.contains("http") && (url.length == 11)) return url;

    for (var exp in [
      RegExp(
          r"^https:\/\/(?:www\.|m\.)?youtube\.com\/watch\?v=([_\-a-zA-Z0-9]{11}).*$"),
      RegExp(
          r"^https:\/\/(?:www\.|m\.)?youtube(?:-nocookie)?\.com\/embed\/([_\-a-zA-Z0-9]{11}).*$"),
      RegExp(r"^https:\/\/youtu\.be\/([_\-a-zA-Z0-9]{11}).*$")
    ]) {
      Match? match = exp.firstMatch(url);
      if (match != null && match.groupCount >= 1) return match.group(1);
    }

    return null;
  }

  static bool _test(String? regex, String? text) {
    if (regex == null || text == null) {
      return false;
    }

    RegExp pattern = RegExp(
      regex,
      caseSensitive: false,
      unicode: true,
      dotAll: true,
    );

    return pattern.hasMatch(text);
  }
}
