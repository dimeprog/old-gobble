class AppExecption implements Exception {
  AppExecption([
    this.message,
    this.prefix,
    this.url,
  ]);
  final String? message;
  final String? prefix;
  final String? url;
}

class BadRequestExecption extends AppExecption {
  BadRequestExecption([String? message, String? url])
      : super(message, 'bad request', url);
}

class ApiNotRespondiingExecption extends AppExecption {
  ApiNotRespondiingExecption([String? message, String? url])
      : super(message, 'Api not Responding', url);
}

class FetchDataExecption extends AppExecption {
  FetchDataExecption([String? message, String? url])
      : super(message, 'Unable to process', url);
}

class TimeoutExecption extends AppExecption {
  TimeoutExecption([String? message, String? url])
      : super(message, 'Taking too much time', url);
}

class UnauthorizedExecption extends AppExecption {
  UnauthorizedExecption([String? message, String? url])
      : super(message, 'Unauthorized Response', url);
}
