import 'package:shared_preferences/shared_preferences.dart';

class AppSharedPref {
  static const localeKey = 'app_locale';
  void setAppLocale(String locale) async {
    final sharedPref = await SharedPreferences.getInstance();
    await sharedPref.setString(localeKey, locale);
  }

  Future<String?> getAppLocale() async {
    final sharedPref = await SharedPreferences.getInstance();
    return sharedPref.getString(localeKey);
  }
}
