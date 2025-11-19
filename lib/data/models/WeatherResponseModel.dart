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
  List<MinuteTimelyData>? minutely;
  List<HourTimelyData>? hourly;
  List<DailyTimelyData>? daily;

  Timelines({this.minutely, this.hourly, this.daily});

  Timelines.fromJson(Map<String, dynamic> json) {
    if (json['minutely'] != null) {
      minutely = <MinuteTimelyData>[];
      json['minutely'].forEach((v) {
        minutely!.add(MinuteTimelyData.fromJson(v));
      });
    }
    if (json['hourly'] != null) {
      hourly = <HourTimelyData>[];
      json['hourly'].forEach((v) {
        hourly!.add(HourTimelyData.fromJson(v));
      });
    }
    if (json['daily'] != null) {
      daily = <DailyTimelyData>[];
      json['daily'].forEach((v) {
        daily!.add(DailyTimelyData.fromJson(v));
      });
    }
  }
}

class MinuteTimelyData {
  String? time;
  MinutelyForecastValue? values;

  MinuteTimelyData({this.time, this.values});

  MinuteTimelyData.fromJson(Map<String, dynamic> json) {
    time = json['time'];
    values = json['values'] != null
        ? MinutelyForecastValue.fromJson(json['values'])
        : null;
  }
}

class HourTimelyData {
  String? time;
  HourlyForecastValue? values;

  HourTimelyData({this.time, this.values});

  HourTimelyData.fromJson(Map<String, dynamic> json) {
    time = json['time'];
    values = json['values'] != null
        ? HourlyForecastValue.fromJson(json['values'])
        : null;
  }
}

class DailyTimelyData {
  String? time;
  DailyForecastValue? values;

  DailyTimelyData({this.time, this.values});

  DailyTimelyData.fromJson(Map<String, dynamic> json) {
    time = json['time'];
    values = json['values'] != null
        ? DailyForecastValue.fromJson(json['values'])
        : null;
  }
}

class MinutelyForecastValue {
  dynamic altimeterSetting;
  dynamic cloudBase;
  dynamic cloudCeiling;
  dynamic cloudCover;
  dynamic dewPoint;
  dynamic evapotranspiration;
  dynamic freezingRainIntensity;
  dynamic humidity;
  dynamic iceAccumulation;
  dynamic iceAccumulationLwe;
  dynamic precipitationProbability;
  dynamic pressureSeaLevel;
  dynamic pressureSurfaceLevel;
  dynamic rainAccumulation;
  dynamic rainIntensity;
  dynamic sleetAccumulation;
  dynamic sleetAccumulationLwe;
  dynamic sleetIntensity;
  dynamic snowAccumulation;
  dynamic snowAccumulationLwe;
  dynamic snowDepth;
  dynamic snowIntensity;
  dynamic temperature;
  dynamic temperatureApparent;
  dynamic uvHealthConcern;
  dynamic uvIndex;
  dynamic visibility;
  dynamic weatherCode;
  dynamic windDirection;
  dynamic windGust;
  dynamic windSpeed;

  MinutelyForecastValue({
    this.altimeterSetting,
    this.cloudBase,
    this.cloudCeiling,
    this.cloudCover,
    this.dewPoint,
    this.evapotranspiration,
    this.freezingRainIntensity,
    this.humidity,
    this.iceAccumulation,
    this.iceAccumulationLwe,
    this.precipitationProbability,
    this.pressureSeaLevel,
    this.pressureSurfaceLevel,
    this.rainAccumulation,
    this.rainIntensity,
    this.sleetAccumulation,
    this.sleetAccumulationLwe,
    this.sleetIntensity,
    this.snowAccumulation,
    this.snowAccumulationLwe,
    this.snowDepth,
    this.snowIntensity,
    this.temperature,
    this.temperatureApparent,
    this.uvHealthConcern,
    this.uvIndex,
    this.visibility,
    this.weatherCode,
    this.windDirection,
    this.windGust,
    this.windSpeed,
  });

  MinutelyForecastValue.fromJson(Map<String, dynamic> json) {
    altimeterSetting = json['altimeterSetting'];
    cloudBase = json['cloudBase'];
    cloudCeiling = json['cloudCeiling'];
    cloudCover = json['cloudCover'];
    dewPoint = json['dewPoint'];
    evapotranspiration = json['evapotranspiration'];
    freezingRainIntensity = json['freezingRainIntensity'];
    humidity = json['humidity'];
    iceAccumulation = json['iceAccumulation'];
    iceAccumulationLwe = json['iceAccumulationLwe'];
    precipitationProbability = json['precipitationProbability'];
    pressureSeaLevel = json['pressureSeaLevel'];
    pressureSurfaceLevel = json['pressureSurfaceLevel'];
    rainAccumulation = json['rainAccumulation'];
    rainIntensity = json['rainIntensity'];
    sleetAccumulation = json['sleetAccumulation'];
    sleetAccumulationLwe = json['sleetAccumulationLwe'];
    sleetIntensity = json['sleetIntensity'];
    snowAccumulation = json['snowAccumulation'];
    snowAccumulationLwe = json['snowAccumulationLwe'];
    snowDepth = json['snowDepth'];
    snowIntensity = json['snowIntensity'];
    temperature = json['temperature'];
    temperatureApparent = json['temperatureApparent'];
    uvHealthConcern = json['uvHealthConcern'];
    uvIndex = json['uvIndex'];
    visibility = json['visibility'];
    weatherCode = json['weatherCode'];
    windDirection = json['windDirection'];
    windGust = json['windGust'];
    windSpeed = json['windSpeed'];
  }
}

class HourlyForecastValue {
  dynamic altimeterSetting;
  dynamic cloudBase;
  dynamic cloudCeiling;
  dynamic cloudCover;
  dynamic dewPoint;
  dynamic evapotranspiration;
  dynamic freezingRainIntensity;
  dynamic humidity;
  dynamic iceAccumulation;
  dynamic iceAccumulationLwe;
  dynamic precipitationProbability;
  dynamic pressureSeaLevel;
  dynamic pressureSurfaceLevel;
  dynamic rainAccumulation;
  dynamic rainIntensity;
  dynamic sleetAccumulation;
  dynamic sleetAccumulationLwe;
  dynamic sleetIntensity;
  dynamic snowAccumulation;
  dynamic snowAccumulationLwe;
  dynamic snowDepth;
  dynamic snowIntensity;
  dynamic temperature;
  dynamic temperatureApparent;
  dynamic uvHealthConcern;
  dynamic uvIndex;
  dynamic visibility;
  dynamic weatherCode;
  dynamic windDirection;
  dynamic windGust;
  dynamic windSpeed;

  HourlyForecastValue({
    this.altimeterSetting,
    this.cloudBase,
    this.cloudCeiling,
    this.cloudCover,
    this.dewPoint,
    this.evapotranspiration,
    this.freezingRainIntensity,
    this.humidity,
    this.iceAccumulation,
    this.iceAccumulationLwe,
    this.precipitationProbability,
    this.pressureSeaLevel,
    this.pressureSurfaceLevel,
    this.rainAccumulation,
    this.rainIntensity,
    this.sleetAccumulation,
    this.sleetAccumulationLwe,
    this.sleetIntensity,
    this.snowAccumulation,
    this.snowAccumulationLwe,
    this.snowDepth,
    this.snowIntensity,
    this.temperature,
    this.temperatureApparent,
    this.uvHealthConcern,
    this.uvIndex,
    this.visibility,
    this.weatherCode,
    this.windDirection,
    this.windGust,
    this.windSpeed,
  });

  HourlyForecastValue.fromJson(Map<String, dynamic> json) {
    altimeterSetting = json['altimeterSetting'];
    cloudBase = json['cloudBase'];
    cloudCeiling = json['cloudCeiling'];
    cloudCover = json['cloudCover'];
    dewPoint = json['dewPoint'];
    evapotranspiration = json['evapotranspiration'];
    freezingRainIntensity = json['freezingRainIntensity'];
    humidity = json['humidity'];
    iceAccumulation = json['iceAccumulation'];
    iceAccumulationLwe = json['iceAccumulationLwe'];
    precipitationProbability = json['precipitationProbability'];
    pressureSeaLevel = json['pressureSeaLevel'];
    pressureSurfaceLevel = json['pressureSurfaceLevel'];
    rainAccumulation = json['rainAccumulation'];
    rainIntensity = json['rainIntensity'];
    sleetAccumulation = json['sleetAccumulation'];
    sleetAccumulationLwe = json['sleetAccumulationLwe'];
    sleetIntensity = json['sleetIntensity'];
    snowAccumulation = json['snowAccumulation'];
    snowAccumulationLwe = json['snowAccumulationLwe'];
    snowDepth = json['snowDepth'];
    snowIntensity = json['snowIntensity'];
    temperature = json['temperature'];
    temperatureApparent = json['temperatureApparent'];
    uvHealthConcern = json['uvHealthConcern'];
    uvIndex = json['uvIndex'];
    visibility = json['visibility'];
    weatherCode = json['weatherCode'];
    windDirection = json['windDirection'];
    windGust = json['windGust'];
    windSpeed = json['windSpeed'];
  }
}

class DailyForecastValue {
  dynamic altimeterSettingAvg;
  dynamic altimeterSettingMax;
  dynamic altimeterSettingMin;
  dynamic cloudBaseAvg;
  dynamic cloudBaseMax;
  dynamic cloudBaseMin;
  dynamic cloudCeilingAvg;
  dynamic cloudCeilingMax;
  dynamic cloudCeilingMin;
  dynamic cloudCoverAvg;
  dynamic cloudCoverMax;
  dynamic cloudCoverMin;
  dynamic dewPointAvg;
  dynamic dewPointMax;
  dynamic dewPointMin;
  dynamic evapotranspirationAvg;
  dynamic evapotranspirationMax;
  dynamic evapotranspirationMin;
  dynamic evapotranspirationSum;
  dynamic freezingRainIntensityAvg;
  dynamic freezingRainIntensityMax;
  dynamic freezingRainIntensityMin;
  dynamic humidityAvg;
  dynamic humidityMax;
  dynamic humidityMin;
  dynamic iceAccumulationAvg;
  dynamic iceAccumulationLweAvg;
  dynamic iceAccumulationLweMax;
  dynamic iceAccumulationLweMin;
  dynamic iceAccumulationLweSum;
  dynamic iceAccumulationMax;
  dynamic iceAccumulationMin;
  dynamic iceAccumulationSum;
  dynamic moonriseTime;
  dynamic moonsetTime;
  dynamic precipitationProbabilityAvg;
  dynamic precipitationProbabilityMax;
  dynamic precipitationProbabilityMin;
  dynamic pressureSeaLevelAvg;
  dynamic pressureSeaLevelMax;
  dynamic pressureSeaLevelMin;
  dynamic pressureSurfaceLevelAvg;
  dynamic pressureSurfaceLevelMax;
  dynamic pressureSurfaceLevelMin;
  dynamic rainAccumulationAvg;
  dynamic rainAccumulationMax;
  dynamic rainAccumulationMin;
  dynamic rainAccumulationSum;
  dynamic rainIntensityAvg;
  dynamic rainIntensityMax;
  dynamic rainIntensityMin;
  dynamic sleetIntensityAvg;
  dynamic sleetIntensityMax;
  dynamic sleetIntensityMin;
  dynamic snowAccumulationAvg;
  dynamic snowAccumulationLweAvg;
  dynamic snowAccumulationLweMax;
  dynamic snowAccumulationLweMin;
  dynamic snowAccumulationLweSum;
  dynamic snowAccumulationMax;
  dynamic snowAccumulationMin;
  dynamic snowAccumulationSum;
  dynamic snowIntensityAvg;
  dynamic snowIntensityMax;
  dynamic snowIntensityMin;
  dynamic sunriseTime;
  dynamic sunsetTime;
  dynamic temperatureApparentAvg;
  dynamic temperatureApparentMax;
  dynamic temperatureApparentMin;
  dynamic temperatureAvg;
  dynamic temperatureMax;
  dynamic temperatureMin;
  dynamic visibilityAvg;
  dynamic visibilityMax;
  dynamic visibilityMin;
  dynamic weatherCodeMax;
  dynamic weatherCodeMin;
  dynamic windDirectionAvg;
  dynamic windGustAvg;
  dynamic windGustMax;
  dynamic windGustMin;
  dynamic windSpeedAvg;
  dynamic windSpeedMax;
  dynamic windSpeedMin;

  DailyForecastValue({
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

  DailyForecastValue.fromJson(Map<String, dynamic> json) {
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
  String? locality;
  String? country;

  Location({this.lat, this.lon});

  Location.fromJson(Map<String, dynamic> json) {
    lat = json['lat'];
    lon = json['lon'];
  }
}

extension WeatherEntityExtension on WeatherResponseModel {
  WeatherEntity get toWeatherEntity =>
      WeatherEntity(timelines: timelines, location: location);
}
