/// Daily temperature data
class DailyTemperature {
  /// Day temperature
  final num day;

  /// Min daily temperature
  final num min;

  /// Max daily temperature
  final num max;

  /// Morning temperature
  final num morn;

  /// Evening temperature
  final num eve;

  /// Night temperature
  final num night;

  /// Creates a [DailyTemperature] object
  DailyTemperature(
    this.day,
    this.min,
    this.max,
    this.morn,
    this.eve,
    this.night,
  );

  /// Creates a [DailyTemperature] object from json
  factory DailyTemperature.fromJson(Map<String, dynamic> json) {
    return DailyTemperature(
      json['day'],
      json['min'],
      json['max'],
      json['morn'],
      json['eve'],
      json['night'],
    );
  }

  /// Returns a [Map] with the object data
  Map<String, dynamic> toJson() {
    return {
      'day': day,
      'min': min,
      'max': max,
      'morn': morn,
      'eve': eve,
      'night': night,
    };
  }
}
