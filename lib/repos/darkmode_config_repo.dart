import 'package:shared_preferences/shared_preferences.dart';

class DarModeConfigRepository {
  static const String _darked = "darked";

  final SharedPreferences _preferences;
  DarModeConfigRepository(this._preferences);

  Future<void> setDark(bool value) async {
    _preferences.setBool(_darked, value);
  }

  bool isDarked() {
    return _preferences.getBool(_darked) ?? false;
  }
}
