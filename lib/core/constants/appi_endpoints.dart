
enum WeatherApiEndPoints{
  getWeatherForecast("/v4/weather/forecast");

  final String url;
  const WeatherApiEndPoints(this.url);
}