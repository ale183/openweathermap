import '../../../openweather_entities.dart';

/// Daily temperature data
class Daily {
  /// [Coordinates] object
  final Coordinates coord;

  /// Timezone name for the requested location
  final String timezone;

  /// Shift in seconds from UTC
  final int timezoneOffset;

  /// List of [DailyWeather]
  final List<DailyWeather> dailyWeather;

  /// Creates a [Daily] object
  Daily(
    this.coord,
    this.timezone,
    this.timezoneOffset,
    this.dailyWeather,
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
      'coordinates': coord.toJson(),
      'timezone': timezone,
      'timezone_offset': timezoneOffset,
      'daily':
          List.generate(dailyWeather.length, (i) => dailyWeather[i].toJson()),
    };
  }
}
