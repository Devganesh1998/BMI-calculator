import 'package:flutter/material.dart';

class ThemeChanger with ChangeNotifier {
  ThemeData _themeData;

  ThemeChanger(this._themeData);

  ThemeData getTheme() {
    return _themeData;
  }

  bool isDark() {
    if (_themeData == ThemeData.dark()) {
      return true;
    }
    return false;
  }

  void alterTheme() {
    _themeData == ThemeData.dark()
        ? _themeData = ThemeData.light()
        : _themeData = ThemeData.dark();
    notifyListeners();
  }
}
