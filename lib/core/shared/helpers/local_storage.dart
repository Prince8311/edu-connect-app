import 'dart:async';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final secureStorageProvider = Provider<LocalDB>((ref) {
  return SecureLocalStorage.instance;
});

final localStorageProvider = FutureProvider<LocalDB>((ref) async {
  return await LocalStorage.getInstance();
});

abstract class LocalDB {
  Future<String?> readData(String key);
  Future<Map<String, String>> readAllData();
  Future<void> clearLocalData(String key);
  Future<void> deleteData(String key);
  Future<bool> writeData(String key, String? value);
  Future<bool?> readBool(String key);
  Future<bool> writeBool(String key, bool value);
}

// ---------------- SHARED PREFS ----------------
class LocalStorage implements LocalDB {
  late SharedPreferences preferences;
  static LocalStorage? _instance;

  LocalStorage._();

  static Future<LocalStorage> getInstance() async {
    _instance ??= LocalStorage._();
    await _instance!.init();
    return _instance!;
  }

  Future<void> init() async {
    preferences = await SharedPreferences.getInstance();
  }

  @override
  Future<String?> readData(String key) async {
    return preferences.getString(key);
  }

  @override
  Future<bool> writeData(String key, String? value) async {
    if (value == null) return false;
    return preferences.setString(key, value);
  }

  @override
  Future<bool?> readBool(String key) async {
    return preferences.getBool(key);
  }

  @override
  Future<bool> writeBool(String key, bool value) async {
    return preferences.setBool(key, value);
  }

  @override
  Future<void> deleteData(String key) async {
    await preferences.remove(key);
  }

  @override
  Future<void> clearLocalData(String key) async {
    await preferences.clear();
  }

  @override
  Future<Map<String, String>> readAllData() async {
    return {
      for (final k in preferences.getKeys()) k: preferences.getString(k) ?? ''
    };
  }
}

// ---------------- SECURE STORAGE ----------------
class SecureLocalStorage implements LocalDB {
  final secureStorage = const FlutterSecureStorage(
    aOptions: AndroidOptions(encryptedSharedPreferences: true),
  );

  SecureLocalStorage._();
  static final SecureLocalStorage instance = SecureLocalStorage._();

  @override
  Future<String?> readData(String key) async {
    return secureStorage.read(key: key);
  }

  @override
  Future<Map<String, String>> readAllData() async {
    return secureStorage.readAll();
  }

  @override
  Future<bool?> readBool(String key) async {
    final value = await secureStorage.read(key: key);
    if (value == null) return null;
    return value.toLowerCase() == 'true';
  }

  @override
  Future<bool> writeBool(String key, bool value) async {
    try {
      await secureStorage.write(key: key, value: value.toString());
      return true;
    } catch (_) {
      return false;
    }
  }

  @override
  Future<void> clearLocalData(String key) async {
    await secureStorage.deleteAll();
  }

  @override
  Future<void> deleteData(String key) async {
    await secureStorage.delete(key: key);
  }

  @override
  Future<bool> writeData(String key, String? value) async {
    try {
      await secureStorage.write(key: key, value: value);
      return true;
    } catch (_) {
      return false;
    }
  }
}
