import 'package:openweathermap/openweather_entities.dart';

class Daily {
  Coordinates _coord;
  String _timezone;
  int _timezoneOffset;
  List<DailyWeather> _dailyWeather;

  Daily(
    this._coord,
    this._timezone,
    this._timezoneOffset,
    this._dailyWeather,
  );

  factory Daily.fromJson(Map<String, dynamic> json) {
    return Daily(
      Coordinates.fromJson({
        'lat': json['lat'],
        'lon': json['lon'],
      }),
      json['timezone'],
      json['timezone_offset'],
      DailyWeather.fromJsonArray(json['daily']),
    );
  }

  Coordinates get coord => _coord;
  String get timezone => _timezone;
  int get timezoneOffset => _timezoneOffset;
  List<DailyWeather> get dailyWeather => _dailyWeather;
}
