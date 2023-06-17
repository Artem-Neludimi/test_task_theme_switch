import 'package:flutter/material.dart';

import '../../locator.dart';
import '../../models/logger.dart';
import '../theme/app_theme.dart';

class ThemeProvider extends ChangeNotifier {
  var _currentTheme = AppTheme.light;

  ThemeData get currentTheme => _currentTheme;

  void themeSwitch() {
    if (_currentTheme == AppTheme.light) {
      _currentTheme = AppTheme.dark;
    } else {
      _currentTheme = AppTheme.light;
    }
    getIt<Logger>().themeLog(
        timestamp: DateTime.now().toIso8601String(),
        theme: _currentTheme.brightness.toString());
    notifyListeners();
  }
}
