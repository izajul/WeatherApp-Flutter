import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:weather_app_flutter/data/models/locationModel.dart';

class AppPref {
  final _storage = FlutterSecureStorage(
    aOptions: AndroidOptions(encryptedSharedPreferences: true),
  );

  Future<void> setString(AppPrefKeys key, String value) async {
    await _storage.write(key: key.name, value: value);
  }

  Future<String?> getString(AppPrefKeys key) async {
    return await _storage.read(key: key.name);
  }

  Future<void> remove(AppPrefKeys key) async {
    await _storage.delete(key: key.name);
  }

  Future saveLastLocation(LocationModel location) async {
    await setString(AppPrefKeys.lastLocation, json.encode(location.toMap()));
  }

  Future<LocationModel?> getLastLocation() async {
    final location = await getString(AppPrefKeys.lastLocation);
    if (location == null) {
      return null;
    } else {
      return LocationModel.fromMap(json.decode(location));
    }
  }
}

enum AppPrefKeys { token, lastLocation }
