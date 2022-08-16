import 'package:shared_preferences/shared_preferences.dart';

class ThemePref {
  // ignore: constant_identifier_names
  static const PREF_KEY = 'pref_key';
  setTheme(bool val) async {
    SharedPreferences sh = await SharedPreferences.getInstance();
    sh.setBool(PREF_KEY, val);
  }

  getTheme() async {
    SharedPreferences sh = await SharedPreferences.getInstance();
    return sh.getBool(PREF_KEY);
  }
}
