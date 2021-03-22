/// Daily human perception of weather data
class DailyFeelsLike {
  num _day;
  num _morn;
  num _eve;
  num _night;

  /// Creates a [DailyFeelsLike] object
  DailyFeelsLike(
    this._day,
    this._morn,
    this._eve,
    this._night,
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
      'day': _day,
      'morn': _morn,
      'eve': _eve,
      'night': _night,
    };
  }

  /// Day temperature
  num get day => _day;

  /// Morning temperature
  num get morn => _morn;

  /// Evening temperature
  num get eve => _eve;

  /// Night temperature
  num get night => _night;
}
