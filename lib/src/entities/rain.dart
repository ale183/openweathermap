/// Rain data
class Rain {
  num? _oneHour;
  num? _threeHours;

  /// Creates a [Rain]
  Rain(
    this._oneHour,
    this._threeHours,
  );

  /// Creates a [Rain] object from json
  factory Rain.fromJson(Map<String, dynamic> json) {
    return Rain(
      json['1h'],
      json['3h'],
    );
  }

  /// Returns a [Map] with the object data
  Map<String, dynamic> toJson() {
    return {
      '1h': _oneHour,
      '3h': _threeHours,
    };
  }

  /// Rain volume for the last 1 hour
  num? get oneHour => _oneHour;

  /// Rain volume for the last 3 hours
  num? get threeHours => _threeHours;
}
