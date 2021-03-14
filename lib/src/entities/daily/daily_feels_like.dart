class DailyFeelsLike {
  num _day;
  num _morn;
  num _eve;
  num _night;

  DailyFeelsLike(
    this._day,
    this._morn,
    this._eve,
    this._night,
  );

  factory DailyFeelsLike.fromJson(Map<String, dynamic> json) {
    return DailyFeelsLike(
      json['day'],
      json['morn'],
      json['eve'],
      json['night'],
    );
  }

  num get day => _day;
  num get morn => _morn;
  num get eve => _eve;
  num get night => _night;
}
