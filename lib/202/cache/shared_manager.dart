import 'package:learn_flutter/202/cache/shared_not_initilaze.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum SharedKeys { counter ,users}

class SharedManager {
  SharedPreferences? preferences;

  SharedManager();
  void _checkPreferences() {
    if (preferences == null) {
      throw SharedNotInitilazeException();
    }
  }

  Future<void> init() async {
    preferences = await SharedPreferences.getInstance();
  }

  Future<void> saveString(SharedKeys key, String value) async {
    _checkPreferences();
    await preferences?.setString(key.name, value);
  }

  String? getString(SharedKeys key) {
    _checkPreferences();
    return preferences?.getString(key.name);
  }

  Future<bool> removeItem(SharedKeys key) async {
    _checkPreferences();
    return (await preferences?.remove(key.name)) ?? false;
  }

  Future<void> saveStringItems(SharedKeys key, List<String> value) async {
    _checkPreferences();
    await preferences?.setStringList(key.name, value);
  }

  List<String>? getStringItems(SharedKeys key) {
    _checkPreferences();
    return preferences?.getStringList(key.name);
  }
}
