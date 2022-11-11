class ServiceException implements Exception {
  final String? message;
  final String? prefix;

  ServiceException([this.message, this.prefix]);

  @override
  String toString() {
    return "$prefix$message";
  }
}

class FetchDataException extends ServiceException {
  FetchDataException([String? message])
      : super(message, "Error During Communication: ");
}

class BadRequestException extends ServiceException {
  BadRequestException([message]) : super(message, "Invalid Request: ");
}
