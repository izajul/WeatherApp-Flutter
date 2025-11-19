import 'package:geolocator/geolocator.dart';

class LocationPermissionModel {
  final bool isLocationEnabled;
  final LocationPermission status;

  bool get isPermanentlyDenied => status == LocationPermission.deniedForever;

  bool get isGranted =>
      status != LocationPermission.denied ||
      status != LocationPermission.deniedForever;

  LocationPermissionModel({
    this.isLocationEnabled = false,
    this.status = LocationPermission.denied,
  });
}
