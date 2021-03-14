import 'package:openweathermap/openweather_entities.dart';

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

  static List<DailyWeather> fromJsonArray(List<dynamic> array) {
    return List.generate(array.length, (i) => DailyWeather.fromJson(array[i]));
  }

  int get dt => _dt;
  int get sunrise => _sunrise;
  int get sunset => _sunset;
  DailyTemperature get temperature => _temperature;
  DailyFeelsLike get feelsLike => _feelsLike;
  int get pressure => _pressure;
  int get humidity => _humidity;
  double get dewPoint => _dewPoint;
  Wind get wind => _wind;
  List<Details> get details => _details;
  num get clouds => _clouds;
  num get pop => _pop;
  num? get rain => _rain;
  num? get snow => _snow;
  num get uvi => _uvi;
}
