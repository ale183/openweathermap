class Coordinates {
  double _lat;
  double _lon;

  Coordinates(
    this._lat,
    this._lon,
  );

  factory Coordinates.fromJson(Map<String, dynamic> json) {
    return Coordinates(json['lat'], json['lon']);
  }

  Map<String, dynamic> toJson() {
    return {
      'lat': _lat,
      'lon': _lon,
    };
  }

  double get lat => _lat;
  double get lon => _lon;
}
