import 'package:shared_preferences/shared_preferences.dart';

import 'PrefConst.dart';

class AppPrefe {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  late Future<int> _counter;

  Future<void> _save(String key, String? data) async {
    final SharedPreferences prefs = await _prefs;
    prefs.setString(key, data ?? "");
  }

  Future<String?> _getData(String key) async {
    final SharedPreferences prefs = await _prefs;
    final String? data = prefs.getString(key);
    return data;
  }
}
