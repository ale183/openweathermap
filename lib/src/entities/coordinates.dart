/// Geographical coordinates
class Coordinates {
  double _lat;
  double _lon;

  /// Creates a [Coordinates] object
  Coordinates(
    this._lat,
    this._lon,
  );

  /// Creates a [Coordinates] object from json
  factory Coordinates.fromJson(Map<String, dynamic> json) {
    return Coordinates(json['lat'], json['lon']);
  }

  /// Returns a [Map] with the object data
  Map<String, dynamic> toJson() {
    return {
      'lat': _lat,
      'lon': _lon,
    };
  }

  /// Latitude
  double get lat => _lat;

  /// Longitude
  double get lon => _lon;
}
