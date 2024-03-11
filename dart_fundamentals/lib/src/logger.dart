
class Logger {
  final String name;

  static final Map<String, Logger> _cache = <String, Logger>{};

  static final Logger logger = Logger._default();

  factory Logger.instance(String name) {
    name = name.toUpperCase();
    return _cache.putIfAbsent(name, () => Logger._internal(name: name));
  }

  Logger._default() : name = "LOGGER";
  Logger._internal({this.name = "LOGGER"}) {
    logger.log("Created logger $name");
  }

  void log(String msg) {
    print('${DateTime.now().toIso8601String()} [$name]\t\t $msg');
  }
}