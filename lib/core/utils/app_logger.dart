import 'package:logger/logger.dart';

class AppLogger {
  static final AppLogger _singleton = AppLogger._internal();
  late Logger _logger;

  factory AppLogger() {
    return _singleton;
  }

  AppLogger._internal() {
    _logger = Logger(
      printer: PrettyPrinter(
          methodCount: 2, // Number of method calls to be displayed
          errorMethodCount: 8, // Number of method calls if stacktrace is provided
          lineLength: 120, // Width of the output
          colors: true, // Colorful log messages
          printEmojis: true, // Print an emoji for each log message
          printTime: false // Should each log print contain a timestamp
      ),

    );
  }

  void info(String message) {
    _logger.i(message);
  }

  void warning(String message) {
    _logger.w(message);
  }

  void error(String message) {
    _logger.e(message);
  }
}
