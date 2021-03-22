import '../../../openweather_entities.dart';

/// Daily temperature data
class Daily {
  Coordinates _coord;
  String _timezone;
  int _timezoneOffset;
  List<DailyWeather> _dailyWeather;

  /// Creates a [Daily] object
  Daily(
    this._coord,
    this._timezone,
    this._timezoneOffset,
    this._dailyWeather,
  );

  /// Creates a [Daily] object from json
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

  /// Returns a [Map] with the object data
  Map<String, dynamic> toJson() {
    return {
      'coordinates': _coord.toJson(),
      'timezone': _timezone,
      'timezone_offset': _timezoneOffset,
      'daily':
          List.generate(_dailyWeather.length, (i) => _dailyWeather[i].toJson()),
    };
  }

  /// [Coordinates] object
  Coordinates get coord => _coord;

  /// Timezone name for the requested location
  String get timezone => _timezone;

  /// Shift in seconds from UTC
  int get timezoneOffset => _timezoneOffset;

  /// List of [DailyWeather]
  List<DailyWeather> get dailyWeather => _dailyWeather;
}
