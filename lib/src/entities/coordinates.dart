class Coordinates {
  double _lon;
  double _lat;

  Coordinates(
    this._lon,
    this._lat,
  );

  factory Coordinates.fromJson(Map<String, dynamic> json) {
    return Coordinates(json['lon'], json['lat']);
  }

  Map<String, dynamic> toJson() {
    return {
      'lon': _lon,
      'lat': _lat,
    };
  }

  double get lon => _lon;
  double get lat => _lat;
}
