class Wind {
  num _speed;
  num _deg;
  num? _gust;

  Wind(
    this._speed,
    this._deg,
    this._gust,
  );

  factory Wind.fromJson(Map<String, dynamic> json) {
    return Wind(
      json['speed'],
      json['deg'],
      json['gust'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'speed': _speed,
      'deg': _deg,
      'gust': _gust,
    };
  }

  num get speed => _speed;
  num get deg => _deg;
  num? get gust => _gust;
}
