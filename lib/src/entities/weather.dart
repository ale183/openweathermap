import 'package:openweathermap/openweather_entities.dart';

class Weather {
  Coordinates _coord;
  List<Details> _details;
  Temperature _temperature;
  int _visibility;
  Wind _wind;
  int _clouds;
  int _dt;
  int _timezone;
  int _id;
  String _name;

  Weather(
    this._coord,
    this._details,
    this._temperature,
    this._visibility,
    this._wind,
    this._clouds,
    this._dt,
    this._timezone,
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
      json['dt'],
      json['timezone'],
      json['id'],
      json['name'],
    );
  }

  Coordinates get coord => _coord;
  List<Details> get details => _details;
  Temperature get temperature => _temperature;
  int get visibility => _visibility;
  Wind get wind => _wind;
  int get clouds => _clouds;
  int get dt => _dt;
  int get timezone => _timezone;
  int get id => _id;
  String get name => _name;
}
