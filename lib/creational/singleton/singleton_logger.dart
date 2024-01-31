class Logger {
  // Private static variable holding the single instance
  static Logger? _instance;

  // Private constructor to prevent instantiation
  Logger._();

  // Public method to access the single instance
  static Logger getInstance() {
    _instance ??= Logger._();
    return _instance!;
  }
 
  // Log method
  void log(String message) {
    print('[${DateTime.now()}] $message');
  }
}

void main() {
  // Using the Singleton Pattern to get a Logger instance
  Logger logger1 = Logger.getInstance();
  logger1.log('Log message 1');

  // Getting another instance, which is the same as logger1
  Logger logger2 = Logger.getInstance();
  logger2.log('Log message 2');

  // Both logger1 and logger2 reference the same instance
  print(
      'logger1 and logger2 are the same instance: ${identical(logger1, logger2)}');
}
