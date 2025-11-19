import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

import '../models/LocationPermissionModel.dart';
import '../models/locationModel.dart';

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

  Future<LocationModel> getAddressBuLatLng(Position position) async {
    final placemarks = await placemarkFromCoordinates(
      position.latitude,
      position.longitude,
    );
    String city = "";
    String country = "";
    String countryCode = "";

    // finding city from placemarks
    for (var placemark in placemarks) {
      final adminArea = placemark.administrativeArea;
      final subAdminArea = placemark.subAdministrativeArea;
      final locality = placemark.locality;
      final subLocality = placemark.subLocality;

      final countryName = placemark.country;
      final isoCountryCode = placemark.isoCountryCode;

      if (countryName != null && country.isEmpty) {
        country = countryName;
      }

      if (isoCountryCode != null && countryCode.isEmpty) {
        countryCode = isoCountryCode;
      }

      if (city.isNotEmpty) {
        break;
      }

      if (adminArea != null) {
        city = adminArea;
      } else if (subAdminArea != null) {
        city = subAdminArea;
      } else if (locality != null) {
        city = locality;
      } else if (subLocality != null) {
        city = subLocality;
      }
    }

    return LocationModel(
      lat: position.latitude,
      lng: position.longitude,
      localityName: city,
      country: country,
    );
  }
}
