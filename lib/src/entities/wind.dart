/// Wind data
class Wind {
  num _speed;
  num _deg;
  num? _gust;

  /// Creates a [Wind] object
  Wind(
    this._speed,
    this._deg,
    this._gust,
  );

  /// Creates a [Wind] object from json
  factory Wind.fromJson(Map<String, dynamic> json) {
    return Wind(
      json['speed'],
      json['deg'],
      json['gust'],
    );
  }

  /// Returns a [Map] with the object data
  Map<String, dynamic> toJson() {
    return {
      'speed': _speed,
      'deg': _deg,
      'gust': _gust,
    };
  }

  /// Wind speed
  num get speed => _speed;

  /// Wind direction
  num get deg => _deg;

  /// Wind gust
  num? get gust => _gust;
}
