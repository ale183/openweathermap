class Wind {
  num _speed;
  int _deg;

  Wind(
    this._speed,
    this._deg,
  );

  factory Wind.fromJson(Map<String, dynamic> json) {
    return Wind(json['speed'], json['deg']);
  }

  Map<String, dynamic> toJson() {
    return {
      'speed': _speed,
      'deg': _deg,
    };
  }

  num get speed => _speed;
  int get deg => _deg;
}
