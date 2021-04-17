/// Daily human perception of weather data
class DailyFeelsLike {
  /// Day temperature
  final num day;

  /// Morning temperature
  final num morn;

  /// Evening temperature
  final num eve;

  /// Night temperature
  final num night;

  /// Creates a [DailyFeelsLike] object
  DailyFeelsLike(
    this.day,
    this.morn,
    this.eve,
    this.night,
  );

  /// Creates a [DailyFeelsLike] object from json
  factory DailyFeelsLike.fromJson(Map<String, dynamic> json) {
    return DailyFeelsLike(
      json['day'],
      json['morn'],
      json['eve'],
      json['night'],
    );
  }

  /// Returns a [Map] with the object data
  Map<String, dynamic> toJson() {
    return {
      'day': day,
      'morn': morn,
      'eve': eve,
      'night': night,
    };
  }
}
