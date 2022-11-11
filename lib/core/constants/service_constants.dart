class ServiceConstants {
  static ServiceConstants? _instance;

  static ServiceConstants? get instance {
    _instance ??= ServiceConstants._init();
    return _instance;
  }

  ServiceConstants._init();
  String get baseUrl => "http://connect.jangle.co:80/";

  Map<String, String> get headersJson => {"Content-Type": "application/json"};
}
