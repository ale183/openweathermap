class Temperature {
  num _temp;
  num _feelsLike;
  num _tempMin;
  num _tempMax;
  int _pressure;
  int _humidity;

  Temperature(
    this._temp,
    this._feelsLike,
    this._tempMin,
    this._tempMax,
    this._pressure,
    this._humidity,
  );

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

  num get temp => _temp;
  num get feelsLike => _feelsLike;
  num get tempMin => _tempMin;
  num get tempMax => _tempMax;
  int get pressure => _pressure;
  int get humidity => _humidity;
}
