import '../../openweather_entities.dart';

/// Weather data
class Weather {
  /// [Coordinates] object
  final Coordinates coord;

  /// List of [Details]
  final List<Details> details;

  /// [Temperature] object
  final Temperature temperature;

  /// Visibility
  final int visibility;

  /// [Wind] object
  final Wind wind;

  /// Cloudiness
  final num clouds;

  /// [Rain] object
  final Rain rain;

  /// [Snow] object
  final Snow snow;

  /// Time of data calculation, unix, UTC
  final int dt;

  /// Shift in seconds from UTC
  final int timezone;

  /// Sunrise time, unix, UTC
  final int sunrise;

  /// Sunset time, unix, UTC
  final int sunset;

  /// City ID
  final int id;

  /// City name
  final String name;

  /// Creates a [Weather] object
  Weather(
    this.coord,
    this.details,
    this.temperature,
    this.visibility,
    this.wind,
    this.clouds,
    this.rain,
    this.snow,
    this.dt,
    this.timezone,
    this.sunrise,
    this.sunset,
    this.id,
    this.name,
  );

  /// Cretes a [Weather] object from json
  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      Coordinates.fromJson(json['coord']),
      Details.fromJsonArray(json['weather']),
      Temperature.fromJson(json['main']),
      json['visibility'],
      Wind.fromJson(json['wind']),
      json['clouds']['all'],
      Rain.fromJson(json['rain'] ?? {}),
      Snow.fromJson(json['snow'] ?? {}),
      json['dt'],
      json['timezone'],
      json['sys']['sunrise'],
      json['sys']['sunset'],
      json['id'],
      json['name'],
    );
  }

  /// Returns a [Map] with the object data
  Map<String, dynamic> toJson() {
    return {
      'coord': coord.toJson(),
      'weather': List.generate(details.length, (i) => details[i].toJson()),
      'main': temperature.toJson(),
      'visibility': visibility,
      'wind': wind.toJson(),
      'clouds': clouds,
      'dt': dt,
      'timezone': timezone,
      'sunrise': sunrise,
      'sunset': sunset,
      'id': id,
      'name': name,
    };
  }
}
