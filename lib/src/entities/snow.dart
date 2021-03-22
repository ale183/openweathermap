/// Snow data
class Snow {
  num? _oneHour;
  num? _threeHours;

  /// Creates a [Snow] object
  Snow(
    this._oneHour,
    this._threeHours,
  );

  /// Creates a [Snow] object from json
  factory Snow.fromJson(Map<String, dynamic> json) {
    return Snow(
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

  /// Snow volume for the last 1 hour
  num? get oneHour => _oneHour;

  /// Snow volume for the last 3 hour
  num? get threeHours => _threeHours;
}
