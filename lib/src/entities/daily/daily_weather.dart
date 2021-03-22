import '../../../openweather_entities.dart';

/// Daily weather data
class DailyWeather {
  int _dt;
  int _sunrise;
  int _sunset;
  DailyTemperature _temperature;
  DailyFeelsLike _feelsLike;
  int _pressure;
  int _humidity;
  double _dewPoint;
  Wind _wind;
  List<Details> _details;
  num _clouds;
  num _pop;
  num? _rain;
  num? _snow;
  num _uvi;

  /// Creates a [DailyWeather] object
  DailyWeather(
    this._dt,
    this._sunrise,
    this._sunset,
    this._temperature,
    this._feelsLike,
    this._pressure,
    this._humidity,
    this._dewPoint,
    this._wind,
    this._details,
    this._clouds,
    this._pop,
    this._rain,
    this._snow,
    this._uvi,
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
      'dt': _dt,
      'sunrise': _sunrise,
      'sunset': _sunset,
      'temp': _temperature.toJson(),
      'feels_like': _feelsLike.toJson(),
      'pressure': _pressure,
      'humidity': _humidity,
      'dew_point': _dewPoint,
      'wind': _wind.toJson(),
      'weather': List.generate(_details.length, (i) => _details[i].toJson()),
      'clouds': _clouds,
      'pop': _pop,
      'rain': _rain,
      'snow': _snow,
      'uvi': _uvi,
    };
  }

  /// Time of the forecasted data
  int get dt => _dt;

  /// Sunrise time, Unix, UTC
  int get sunrise => _sunrise;

  /// Sunset time, Unix, UTC
  int get sunset => _sunset;

  /// [DailyTemperature] object
  DailyTemperature get temperature => _temperature;

  /// [DailyFeelsLike] object
  DailyFeelsLike get feelsLike => _feelsLike;

  /// Atmospheric pressure on the sea level
  int get pressure => _pressure;

  /// Humidity
  int get humidity => _humidity;

  /// Atmospheric temperature (varying according to pressure and humidity)
  /// below which water droplets begin to condense and dew can form
  double get dewPoint => _dewPoint;

  /// [Wind] object
  Wind get wind => _wind;

  /// List of [Details]
  List<Details> get details => _details;

  /// Cloudiness
  num get clouds => _clouds;

  /// Probability of precipitation
  num get pop => _pop;

  /// Precipitation volume
  num? get rain => _rain;

  /// Snow volume
  num? get snow => _snow;

  /// The maximum value of UV index for the day
  num get uvi => _uvi;
}
