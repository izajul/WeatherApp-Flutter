import 'package:geolocator/geolocator.dart';

import '../models/LocationPermissionModel.dart';

class LocationReop {
  Future<bool> get isLocationServiceEnabled async =>
      await Geolocator.isLocationServiceEnabled();

  Future<LocationPermissionModel> getPermission() async {
    if (!await isLocationServiceEnabled) {
      return LocationPermissionModel();
    }
    var status = await Geolocator.checkPermission();
    if (status == LocationPermission.denied) {
      status = await Geolocator.requestPermission();
    }

    return LocationPermissionModel(isLocationEnabled: true, status: status);
  }

  Future<Position> getCurrentLocation() async {
    return await Geolocator.getCurrentPosition();
  }
}
