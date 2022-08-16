import 'package:flutter/cupertino.dart';
import 'package:portfolio/utils/theme_pref.dart';

class ThemeModel extends ChangeNotifier {
  bool _isDark = false;
  ThemePref _pref = ThemePref();
  bool get isDark => _isDark;

  getPref() async {
    _isDark = await _pref.getTheme();
    notifyListeners();
  }

  set isDark(bool val) {
    _isDark = val;
    _pref.setTheme(val);
    notifyListeners();
  }

  ThemeModel() {
    _isDark = false;
    _pref = ThemePref();
    getPref();
  }
}
