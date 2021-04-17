import '../../../openweather_entities.dart';

/// Daily weather data
class DailyWeather {
  /// Time of the forecasted data
  final int dt;

  /// Sunrise time, Unix, UTC
  final int sunrise;

  /// Sunset time, Unix, UTC
  final int sunset;

  /// [DailyTemperature] object
  final DailyTemperature temperature;

  /// [DailyFeelsLike] object
  final DailyFeelsLike feelsLike;

  /// Atmospheric pressure on the sea level
  final int pressure;

  /// Humidity
  final int humidity;

  /// Atmospheric temperature (varying according to pressure and humidity)
  /// below which water droplets begin to condense and dew can form
  final double dewPoint;

  /// [Wind] object
  final Wind wind;

  /// List of [Details]
  final List<Details> details;

  /// Cloudiness
  final num clouds;

  /// Probability of precipitation
  final num pop;

  /// Precipitation volume
  final num? rain;

  /// Snow volume
  final num? snow;

  /// The maximum value of UV index for the day
  final num uvi;

  /// Creates a [DailyWeather] object
  DailyWeather(
    this.dt,
    this.sunrise,
    this.sunset,
    this.temperature,
    this.feelsLike,
    this.pressure,
    this.humidity,
    this.dewPoint,
    this.wind,
    this.details,
    this.clouds,
    this.pop,
    this.rain,
    this.snow,
    this.uvi,
  );

  /// Creates a [DailyWeather] object from json
  factory DailyWeather.fromJson(Map<String, dynamic> json) {
    return DailyWeather(
      json['dt'],
      json['sunrise'],
      json['sunset'],
      DailyTemperature.fromJson(json['temp']),
      DailyFeelsLike.fromJson(json['feels_like']),
      json['pressure'],
      json['humidity'],
      json['dew_point'],
      Wind.fromJson({
        'speed': json['wind_speed'],
        'deg': json['wind_deg'],
        'gust': json['wind_gust'],
      }),
      Details.fromJsonArray(json['weather']),
      json['clouds'],
      json['pop'],
      json['rain'],
      json['snow'],
      json['uvi'],
    );
  }

  /// Creates a list of [DailyWeather] from a list
  static List<DailyWeather> fromJsonArray(List<dynamic> array) {
    return List.generate(array.length, (i) => DailyWeather.fromJson(array[i]));
  }

  /// Returns a [Map] with the object data
  Map<String, dynamic> toJson() {
    return {
      'dt': dt,
      'sunrise': sunrise,
      'sunset': sunset,
      'temp': temperature.toJson(),
      'feels_like': feelsLike.toJson(),
      'pressure': pressure,
      'humidity': humidity,
      'dew_point': dewPoint,
      'wind': wind.toJson(),
      'weather': List.generate(details.length, (i) => details[i].toJson()),
      'clouds': clouds,
      'pop': pop,
      'rain': rain,
      'snow': snow,
      'uvi': uvi,
    };
  }
}
