/// Daily temperature data
class DailyTemperature {
  num _day;
  num _min;
  num _max;
  num _morn;
  num _eve;
  num _night;

  /// Creates a [DailyTemperature] object
  DailyTemperature(
    this._day,
    this._min,
    this._max,
    this._morn,
    this._eve,
    this._night,
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
      'day': _day,
      'min': _min,
      'max': _max,
      'morn': _morn,
      'eve': _eve,
      'night': _night,
    };
  }

  /// Day temperature
  num get day => _day;

  /// Min daily temperature
  num get min => _min;

  /// Max daily temperature
  num get max => _max;

  /// Morning temperature
  num get morn => _morn;

  /// Evening temperature
  num get eve => _eve;

  /// Night temperature
  num get night => _night;
}
