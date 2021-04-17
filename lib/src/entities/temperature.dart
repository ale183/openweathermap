/// Temperature data
class Temperature {
  /// Temperature
  final num temp;

  /// This temperature parameter accounts for the human perception of weather
  final num feelsLike;

  /// Minimum temperature at the moment
  final num tempMin;

  /// Maximum temperature at the moment
  final num tempMax;

  /// Atmospheric pressure
  final int pressure;

  /// Humidity
  final int humidity;

  /// Creates a [Temperature] object
  Temperature(
    this.temp,
    this.feelsLike,
    this.tempMin,
    this.tempMax,
    this.pressure,
    this.humidity,
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
      'temp': temp,
      'feels_like': feelsLike,
      'temp_min': tempMin,
      'temp_max': tempMax,
      'pressure': pressure,
      'humidity': humidity,
    };
  }
}
