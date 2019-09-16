import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:my_assistant/models/appUser/appuser.dart';

class Prefrence {
  // private variablase
  static Prefrence _instance;
  static SharedPreferences _preferences;

  // checks for singleton instance, and
  static Future<Prefrence> getInstance() async {
    if (_instance == null) {
      _instance = Prefrence();
    }
    if (_preferences == null) {
      _preferences = await SharedPreferences.getInstance();
    }
    return _instance;
  }

  // ==============================================
  // ==============  KEYS OPERATIONS ==============
  // ==============================================
  static const String DarkModeKey = 'darkmode';
  static const String _appUserUniqueKey = "_AppUserUniquePrefrenceKey";

  // ==============================================
  // ==============  GETTER ==============
  // ==============================================
  String getString(String key) => _preferences.getString(key);
  bool getBool(String key) => _preferences.getBool(key);

  // ==============================================
  // ==============  SETTER ==============
  // ==============================================
  void setString(String key, String value) {
    _preferences.setString(key, value);
  }

  void setBool(String key, bool value) {
    _preferences.setBool(key, value);
  }

  // ==============================================
  // ==============  Utils ==============
  // ==============================================
  bool get darkMode => _getFromDisk(DarkModeKey) ?? false;
  set darkMode(bool value) => _saveToDisk(DarkModeKey, value);

  AppUser get getAppUser {
    var userJson = _getFromDisk(_appUserUniqueKey);
    if (userJson == null) {
      return null;
    }
    return AppUser.fromJson(json.decode(userJson));
  }

  void saveAppUser(AppUser appUser) {
    _saveToDisk(_appUserUniqueKey, json.encode(appUser.toJson()));
  }

  void saveAppUserMap(Map<String, dynamic> appUser) {
    _saveToDisk(_appUserUniqueKey, json.encode(appUser));
  }

  // ==============================================
  // ==============  DISK OPERATIONS ==============
  // ==============================================
  dynamic _getFromDisk(String key) {
    var value = _preferences.get(key);
    print('(TRACE) LocalStorageService:_getFromDisk. key: $key value: $value');
    return value;
  }

// updated _saveToDisk function that handles all types
  void _saveToDisk<T>(String key, T content) {
    print('(TRACE) LocalStorageService:_saveToDisk. key: $key value: $content');

    if (content is String) {
      _preferences.setString(key, content);
    }
    if (content is bool) {
      _preferences.setBool(key, content);
    }
    if (content is int) {
      _preferences.setInt(key, content);
    }
    if (content is double) {
      _preferences.setDouble(key, content);
    }
    if (content is List<String>) {
      _preferences.setStringList(key, content);
    }
  }
}
