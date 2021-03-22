import '../../openweather_entities.dart';

/// Weather data
class Weather {
  Coordinates _coord;
  List<Details> _details;
  Temperature _temperature;
  int _visibility;
  Wind _wind;
  num _clouds;
  Rain _rain;
  Snow _snow;
  int _dt;
  int _timezone;
  int _sunrise;
  int _sunset;
  int _id;
  String _name;

  /// Creates a [Weather] object
  Weather(
    this._coord,
    this._details,
    this._temperature,
    this._visibility,
    this._wind,
    this._clouds,
    this._rain,
    this._snow,
    this._dt,
    this._timezone,
    this._sunrise,
    this._sunset,
    this._id,
    this._name,
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
      'coord': _coord.toJson(),
      'weather': List.generate(_details.length, (i) => _details[i].toJson()),
      'main': _temperature.toJson(),
      'visibility': _visibility,
      'wind': _wind.toJson(),
      'clouds': _clouds,
      'dt': _dt,
      'timezone': _timezone,
      'sunrise': _sunrise,
      'sunset': _sunset,
      'id': _id,
      'name': _name,
    };
  }

  /// [Coordinates] object
  Coordinates get coord => _coord;

  /// List of [Details]
  List<Details> get details => _details;

  /// [Temperature] object
  Temperature get temperature => _temperature;

  /// Visibility
  int get visibility => _visibility;

  /// [Wind] object
  Wind get wind => _wind;

  /// Cloudiness
  num get clouds => _clouds;

  /// [Rain] object
  Rain get rain => _rain;

  /// [Snow] object
  Snow get snow => _snow;

  /// Time of data calculation, unix, UTC
  int get dt => _dt;

  /// Shift in seconds from UTC
  int get timezone => _timezone;

  /// Sunrise time, unix, UTC
  int get sunrise => _sunrise;

  /// Sunset time, unix, UTC
  int get sunset => _sunset;

  /// City ID
  int get id => _id;

  /// City name
  String get name => _name;
}
