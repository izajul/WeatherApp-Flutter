import '../../domain/entities/weather_entity.dart';

class WeatherResponseModel {
  Timelines? timelines;
  Location? location;

  WeatherResponseModel({this.timelines, this.location});

  WeatherResponseModel.fromJson(Map<String, dynamic> json) {
    timelines = json['timelines'] != null
        ? new Timelines.fromJson(json['timelines'])
        : null;
    location = json['location'] != null
        ? new Location.fromJson(json['location'])
        : null;
  }
}

class Timelines {
  List<TimelyData>? minutely;
  List<TimelyData>? hourly;
  List<TimelyData>? daily;

  Timelines({this.minutely, this.hourly, this.daily});

  Timelines.fromJson(Map<String, dynamic> json) {
    if (json['minutely'] != null) {
      minutely = <TimelyData>[];
      json['minutely'].forEach((v) {
        minutely!.add(TimelyData.fromJson(v));
      });
    }
    if (json['hourly'] != null) {
      hourly = <TimelyData>[];
      json['hourly'].forEach((v) {
        hourly!.add(TimelyData.fromJson(v));
      });
    }
    if (json['daily'] != null) {
      daily = <TimelyData>[];
      json['daily'].forEach((v) {
        daily!.add(TimelyData.fromJson(v));
      });
    }
  }
}

class TimelyData {
  String? time;
  Values? values;

  TimelyData({this.time, this.values});

  TimelyData.fromJson(Map<String, dynamic> json) {
    time = json['time'];
    values = json['values'] != null ? Values.fromJson(json['values']) : null;
  }
}

class Values {
  double? altimeterSettingAvg;
  double? altimeterSettingMax;
  double? altimeterSettingMin;
  double? cloudBaseAvg;
  double? cloudBaseMax;
  double? cloudBaseMin;
  double? cloudCeilingAvg;
  double? cloudCeilingMax;
  double? cloudCeilingMin;
  int? cloudCoverAvg;
  int? cloudCoverMax;
  int? cloudCoverMin;
  double? dewPointAvg;
  double? dewPointMax;
  double? dewPointMin;
  double? evapotranspirationAvg;
  double? evapotranspirationMax;
  double? evapotranspirationMin;
  double? evapotranspirationSum;
  int? freezingRainIntensityAvg;
  int? freezingRainIntensityMax;
  int? freezingRainIntensityMin;
  int? humidityAvg;
  int? humidityMax;
  int? humidityMin;
  int? iceAccumulationAvg;
  int? iceAccumulationLweAvg;
  int? iceAccumulationLweMax;
  int? iceAccumulationLweMin;
  int? iceAccumulationLweSum;
  int? iceAccumulationMax;
  int? iceAccumulationMin;
  int? iceAccumulationSum;
  String? moonriseTime;
  String? moonsetTime;
  int? precipitationProbabilityAvg;
  int? precipitationProbabilityMax;
  int? precipitationProbabilityMin;
  double? pressureSeaLevelAvg;
  double? pressureSeaLevelMax;
  double? pressureSeaLevelMin;
  double? pressureSurfaceLevelAvg;
  double? pressureSurfaceLevelMax;
  double? pressureSurfaceLevelMin;
  int? rainAccumulationAvg;
  int? rainAccumulationMax;
  int? rainAccumulationMin;
  int? rainAccumulationSum;
  int? rainIntensityAvg;
  int? rainIntensityMax;
  int? rainIntensityMin;
  int? sleetAccumulationAvg;
  int? sleetAccumulationLweAvg;
  int? sleetAccumulationLweMax;
  int? sleetAccumulationLweMin;
  int? sleetAccumulationLweSum;
  int? sleetAccumulationMax;
  int? sleetAccumulationMin;
  int? sleetIntensityAvg;
  int? sleetIntensityMax;
  int? sleetIntensityMin;
  int? snowAccumulationAvg;
  int? snowAccumulationLweAvg;
  int? snowAccumulationLweMax;
  int? snowAccumulationLweMin;
  int? snowAccumulationLweSum;
  int? snowAccumulationMax;
  int? snowAccumulationMin;
  int? snowAccumulationSum;
  Null? snowDepthAvg;
  Null? snowDepthMax;
  Null? snowDepthMin;
  Null? snowDepthSum;
  int? snowIntensityAvg;
  int? snowIntensityMax;
  int? snowIntensityMin;
  String? sunriseTime;
  String? sunsetTime;
  double? temperatureApparentAvg;
  double? temperatureApparentMax;
  double? temperatureApparentMin;
  double? temperatureAvg;
  double? temperatureMax;
  double? temperatureMin;
  int? uvHealthConcernAvg;
  int? uvHealthConcernMax;
  int? uvHealthConcernMin;
  int? uvIndexAvg;
  int? uvIndexMax;
  int? uvIndexMin;
  double? visibilityAvg;
  int? visibilityMax;
  double? visibilityMin;
  int? weatherCodeMax;
  int? weatherCodeMin;
  int? windDirectionAvg;
  double? windGustAvg;
  double? windGustMax;
  double? windGustMin;
  double? windSpeedAvg;
  double? windSpeedMax;
  double? windSpeedMin;

  Values({
    this.altimeterSettingAvg,
    this.altimeterSettingMax,
    this.altimeterSettingMin,
    this.cloudBaseAvg,
    this.cloudBaseMax,
    this.cloudBaseMin,
    this.cloudCeilingAvg,
    this.cloudCeilingMax,
    this.cloudCeilingMin,
    this.cloudCoverAvg,
    this.cloudCoverMax,
    this.cloudCoverMin,
    this.dewPointAvg,
    this.dewPointMax,
    this.dewPointMin,
    this.evapotranspirationAvg,
    this.evapotranspirationMax,
    this.evapotranspirationMin,
    this.evapotranspirationSum,
    this.freezingRainIntensityAvg,
    this.freezingRainIntensityMax,
    this.freezingRainIntensityMin,
    this.humidityAvg,
    this.humidityMax,
    this.humidityMin,
    this.iceAccumulationAvg,
    this.iceAccumulationLweAvg,
    this.iceAccumulationLweMax,
    this.iceAccumulationLweMin,
    this.iceAccumulationLweSum,
    this.iceAccumulationMax,
    this.iceAccumulationMin,
    this.iceAccumulationSum,
    this.moonriseTime,
    this.moonsetTime,
    this.precipitationProbabilityAvg,
    this.precipitationProbabilityMax,
    this.precipitationProbabilityMin,
    this.pressureSeaLevelAvg,
    this.pressureSeaLevelMax,
    this.pressureSeaLevelMin,
    this.pressureSurfaceLevelAvg,
    this.pressureSurfaceLevelMax,
    this.pressureSurfaceLevelMin,
    this.rainAccumulationAvg,
    this.rainAccumulationMax,
    this.rainAccumulationMin,
    this.rainAccumulationSum,
    this.rainIntensityAvg,
    this.rainIntensityMax,
    this.rainIntensityMin,
    this.sleetAccumulationAvg,
    this.sleetAccumulationLweAvg,
    this.sleetAccumulationLweMax,
    this.sleetAccumulationLweMin,
    this.sleetAccumulationLweSum,
    this.sleetAccumulationMax,
    this.sleetAccumulationMin,
    this.sleetIntensityAvg,
    this.sleetIntensityMax,
    this.sleetIntensityMin,
    this.snowAccumulationAvg,
    this.snowAccumulationLweAvg,
    this.snowAccumulationLweMax,
    this.snowAccumulationLweMin,
    this.snowAccumulationLweSum,
    this.snowAccumulationMax,
    this.snowAccumulationMin,
    this.snowAccumulationSum,
    this.snowDepthAvg,
    this.snowDepthMax,
    this.snowDepthMin,
    this.snowDepthSum,
    this.snowIntensityAvg,
    this.snowIntensityMax,
    this.snowIntensityMin,
    this.sunriseTime,
    this.sunsetTime,
    this.temperatureApparentAvg,
    this.temperatureApparentMax,
    this.temperatureApparentMin,
    this.temperatureAvg,
    this.temperatureMax,
    this.temperatureMin,
    this.uvHealthConcernAvg,
    this.uvHealthConcernMax,
    this.uvHealthConcernMin,
    this.uvIndexAvg,
    this.uvIndexMax,
    this.uvIndexMin,
    this.visibilityAvg,
    this.visibilityMax,
    this.visibilityMin,
    this.weatherCodeMax,
    this.weatherCodeMin,
    this.windDirectionAvg,
    this.windGustAvg,
    this.windGustMax,
    this.windGustMin,
    this.windSpeedAvg,
    this.windSpeedMax,
    this.windSpeedMin,
  });

  Values.fromJson(Map<String, dynamic> json) {
    altimeterSettingAvg = json['altimeterSettingAvg'];
    altimeterSettingMax = json['altimeterSettingMax'];
    altimeterSettingMin = json['altimeterSettingMin'];
    cloudBaseAvg = json['cloudBaseAvg'];
    cloudBaseMax = json['cloudBaseMax'];
    cloudBaseMin = json['cloudBaseMin'];
    cloudCeilingAvg = json['cloudCeilingAvg'];
    cloudCeilingMax = json['cloudCeilingMax'];
    cloudCeilingMin = json['cloudCeilingMin'];
    cloudCoverAvg = json['cloudCoverAvg'];
    cloudCoverMax = json['cloudCoverMax'];
    cloudCoverMin = json['cloudCoverMin'];
    dewPointAvg = json['dewPointAvg'];
    dewPointMax = json['dewPointMax'];
    dewPointMin = json['dewPointMin'];
    evapotranspirationAvg = json['evapotranspirationAvg'];
    evapotranspirationMax = json['evapotranspirationMax'];
    evapotranspirationMin = json['evapotranspirationMin'];
    evapotranspirationSum = json['evapotranspirationSum'];
    freezingRainIntensityAvg = json['freezingRainIntensityAvg'];
    freezingRainIntensityMax = json['freezingRainIntensityMax'];
    freezingRainIntensityMin = json['freezingRainIntensityMin'];
    humidityAvg = json['humidityAvg'];
    humidityMax = json['humidityMax'];
    humidityMin = json['humidityMin'];
    iceAccumulationAvg = json['iceAccumulationAvg'];
    iceAccumulationLweAvg = json['iceAccumulationLweAvg'];
    iceAccumulationLweMax = json['iceAccumulationLweMax'];
    iceAccumulationLweMin = json['iceAccumulationLweMin'];
    iceAccumulationLweSum = json['iceAccumulationLweSum'];
    iceAccumulationMax = json['iceAccumulationMax'];
    iceAccumulationMin = json['iceAccumulationMin'];
    iceAccumulationSum = json['iceAccumulationSum'];
    moonriseTime = json['moonriseTime'];
    moonsetTime = json['moonsetTime'];
    precipitationProbabilityAvg = json['precipitationProbabilityAvg'];
    precipitationProbabilityMax = json['precipitationProbabilityMax'];
    precipitationProbabilityMin = json['precipitationProbabilityMin'];
    pressureSeaLevelAvg = json['pressureSeaLevelAvg'];
    pressureSeaLevelMax = json['pressureSeaLevelMax'];
    pressureSeaLevelMin = json['pressureSeaLevelMin'];
    pressureSurfaceLevelAvg = json['pressureSurfaceLevelAvg'];
    pressureSurfaceLevelMax = json['pressureSurfaceLevelMax'];
    pressureSurfaceLevelMin = json['pressureSurfaceLevelMin'];
    rainAccumulationAvg = json['rainAccumulationAvg'];
    rainAccumulationMax = json['rainAccumulationMax'];
    rainAccumulationMin = json['rainAccumulationMin'];
    rainAccumulationSum = json['rainAccumulationSum'];
    rainIntensityAvg = json['rainIntensityAvg'];
    rainIntensityMax = json['rainIntensityMax'];
    rainIntensityMin = json['rainIntensityMin'];
    sleetAccumulationAvg = json['sleetAccumulationAvg'];
    sleetAccumulationLweAvg = json['sleetAccumulationLweAvg'];
    sleetAccumulationLweMax = json['sleetAccumulationLweMax'];
    sleetAccumulationLweMin = json['sleetAccumulationLweMin'];
    sleetAccumulationLweSum = json['sleetAccumulationLweSum'];
    sleetAccumulationMax = json['sleetAccumulationMax'];
    sleetAccumulationMin = json['sleetAccumulationMin'];
    sleetIntensityAvg = json['sleetIntensityAvg'];
    sleetIntensityMax = json['sleetIntensityMax'];
    sleetIntensityMin = json['sleetIntensityMin'];
    snowAccumulationAvg = json['snowAccumulationAvg'];
    snowAccumulationLweAvg = json['snowAccumulationLweAvg'];
    snowAccumulationLweMax = json['snowAccumulationLweMax'];
    snowAccumulationLweMin = json['snowAccumulationLweMin'];
    snowAccumulationLweSum = json['snowAccumulationLweSum'];
    snowAccumulationMax = json['snowAccumulationMax'];
    snowAccumulationMin = json['snowAccumulationMin'];
    snowAccumulationSum = json['snowAccumulationSum'];
    snowDepthAvg = json['snowDepthAvg'];
    snowDepthMax = json['snowDepthMax'];
    snowDepthMin = json['snowDepthMin'];
    snowDepthSum = json['snowDepthSum'];
    snowIntensityAvg = json['snowIntensityAvg'];
    snowIntensityMax = json['snowIntensityMax'];
    snowIntensityMin = json['snowIntensityMin'];
    sunriseTime = json['sunriseTime'];
    sunsetTime = json['sunsetTime'];
    temperatureApparentAvg = json['temperatureApparentAvg'];
    temperatureApparentMax = json['temperatureApparentMax'];
    temperatureApparentMin = json['temperatureApparentMin'];
    temperatureAvg = json['temperatureAvg'];
    temperatureMax = json['temperatureMax'];
    temperatureMin = json['temperatureMin'];
    uvHealthConcernAvg = json['uvHealthConcernAvg'];
    uvHealthConcernMax = json['uvHealthConcernMax'];
    uvHealthConcernMin = json['uvHealthConcernMin'];
    uvIndexAvg = json['uvIndexAvg'];
    uvIndexMax = json['uvIndexMax'];
    uvIndexMin = json['uvIndexMin'];
    visibilityAvg = json['visibilityAvg'];
    visibilityMax = json['visibilityMax'];
    visibilityMin = json['visibilityMin'];
    weatherCodeMax = json['weatherCodeMax'];
    weatherCodeMin = json['weatherCodeMin'];
    windDirectionAvg = json['windDirectionAvg'];
    windGustAvg = json['windGustAvg'];
    windGustMax = json['windGustMax'];
    windGustMin = json['windGustMin'];
    windSpeedAvg = json['windSpeedAvg'];
    windSpeedMax = json['windSpeedMax'];
    windSpeedMin = json['windSpeedMin'];
  }
}

class Location {
  double? lat;
  double? lon;

  Location({this.lat, this.lon});

  Location.fromJson(Map<String, dynamic> json) {
    lat = json['lat'];
    lon = json['lon'];
  }
}

extension WeatherEntityExtension on WeatherResponseModel {
  WeatherEntity get toWeatherEntity => WeatherEntity(
    timelines: timelines,
    location: location,
  );
}