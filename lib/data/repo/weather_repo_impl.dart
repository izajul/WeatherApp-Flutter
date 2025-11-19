import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_app_flutter/core/errors/error_handler.dart';

import 'package:weather_app_flutter/core/errors/failures.dart';
import 'package:weather_app_flutter/data/models/WeatherResponseModel.dart';
import 'package:weather_app_flutter/data/models/locationModel.dart';
import 'package:weather_app_flutter/data/repo/locationRepo.dart';
import 'package:weather_app_flutter/data/source/app_pref.dart';
import 'package:weather_app_flutter/data/source/weatherApiService.dart';

import 'package:weather_app_flutter/domain/entities/weather_entity.dart';

import '../../core/errors/exceptions.dart';
import '../../domain/repo/weatherRepo.dart';

class WeatherRepoImpl extends WeatherRepo {
  final WeatherApiService weatherApiService;
  final LocationReop locationReop;
  final AppPref appPref;

  WeatherRepoImpl(this.weatherApiService, this.locationReop, this.appPref);

  @override
  Future<Either<Failure, WeatherEntity>> getWeatherData() async {
    final location = await locationReop.getPermission();

    if (!location.isGranted) {
      return Left(
        PermissionFailure(
          "Permission Not granted!, Please allow location permission",
        ),
      );
    }

    final locationData = await locationReop.getCurrentLocation();

    final address = await locationReop.getAddressBuLatLng(locationData);
    await appPref.saveLastLocation(address);

    try {
      final result = await weatherApiService.getWeather(
        latitude: locationData.latitude,
        longitude: locationData.longitude,
      );

      final entity = result.toWeatherEntity;
      entity.location?.locality = address.localityName;
      entity.location?.country = address.country;

      return Right(entity);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message, statusCode: e.statusCode));
    } catch (e) {
      return Left(ServerFailure(e.toString(), statusCode: -1));
    }
  }
}
