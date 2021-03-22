/// Temperature data
class Temperature {
  num _temp;
  num _feelsLike;
  num _tempMin;
  num _tempMax;
  int _pressure;
  int _humidity;

  /// Creates a [Temperature] object
  Temperature(
    this._temp,
    this._feelsLike,
    this._tempMin,
    this._tempMax,
    this._pressure,
    this._humidity,
  );

  /// Creates a [Temperature] object from json
  factory Temperature.fromJson(Map<String, dynamic> json) {
    return Temperature(
      json['temp'],
      json['feels_like'],
      json['temp_min'],
      json['temp_max'],
      json['pressure'],
      json['humidity'],
    );
  }

  /// Returns a [Map] with the object data
  Map<String, dynamic> toJson() {
    return {
      'temp': _temp,
      'feels_like': _feelsLike,
      'temp_min': _tempMin,
      'temp_max': _tempMax,
      'pressure': _pressure,
      'humidity': _humidity,
    };
  }

  /// Temperature
  num get temp => _temp;

  /// This temperature parameter accounts for the human perception of weather
  num get feelsLike => _feelsLike;

  /// Minimum temperature at the moment
  num get tempMin => _tempMin;

  /// Maximum temperature at the moment
  num get tempMax => _tempMax;

  /// Atmospheric pressure
  int get pressure => _pressure;

  /// Humidity
  int get humidity => _humidity;
}
