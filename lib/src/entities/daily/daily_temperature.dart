class DailyTemperature {
  num _day;
  num _min;
  num _max;
  num _morn;
  num _eve;
  num _night;

  DailyTemperature(
    this._day,
    this._min,
    this._max,
    this._morn,
    this._eve,
    this._night,
  );

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

  num get day => _day;
  num get min => _min;
  num get max => _max;
  num get morn => _morn;
  num get eve => _eve;
  num get night => _night;
}
