/// Wind data
class Wind {
  /// Wind speed
  final num speed;

  /// Wind direction
  final num deg;

  /// Wind gust
  final num? gust;

  /// Creates a [Wind] object
  Wind(
    this.speed,
    this.deg,
    this.gust,
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
      'speed': speed,
      'deg': deg,
      'gust': gust,
    };
  }
}
