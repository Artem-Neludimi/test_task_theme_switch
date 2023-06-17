import 'dart:developer';

class Logger {
  final _logs = <Map<String, String>>[];

  List<Map<String, String>> get logs => _logs;

  void themeLog({required String timestamp, required String theme}) {
    _logs.add({timestamp: theme});
    log('$timestamp $theme');
  }
}
