import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:rnr/data/models/resposne/login.dart';

class AppPref {
  late final FlutterSecureStorage _storage;
  AppPref() {
    _storage = const FlutterSecureStorage();
  }

  Future<Null> logout() async {
    await saveUser(null);
  }

  Future<void> saveUser(Login? loginData) async {
    var data;
    if (loginData == null)
      data = null;
    else
      data = loginData.toJson();
    await _storage.write(
      key: 'USER',
      value: data,
    );
  }

  Future<Login?> getUser() async {
    Login? login;
    final String? userStr = await _read('USER');
    if (userStr == null)
      login = null;
    else {
      final json1 = Login.fromJson(json.decode(userStr!));
      login = json1;
    }
    return login;
  }

  Future<String?> _read(String key) async {
    // Read value
    String? value = await _storage.read(key: key);
    return value;
  }

  Future<void> _save(String key, dynamic data) async {
    await _storage.write(
      key: key,
      value: data,
    );
  }

  Future<void> remove(String key) async {
    // Delete value
    await _storage.delete(key: key);
  }

  Future<void> removeAll(String key) async {
    // Delete value
// Delete all
    await _storage.deleteAll();
  }
}
