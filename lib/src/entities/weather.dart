import 'package:openweathermap/openweather_entities.dart';

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

  Coordinates get coord => _coord;
  List<Details> get details => _details;
  Temperature get temperature => _temperature;
  int get visibility => _visibility;
  Wind get wind => _wind;
  num get clouds => _clouds;
  Rain get rain => _rain;
  Snow get snow => _snow;
  int get dt => _dt;
  int get timezone => _timezone;
  int get sunrise => _sunrise;
  int get sunset => _sunset;
  int get id => _id;
  String get name => _name;
}
