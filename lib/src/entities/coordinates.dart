/// Geographical coordinates
class Coordinates {
  /// Latitude
  final double lat;

  /// Longitude
  final double lon;

  /// Creates a [Coordinates] object
  Coordinates(
    this.lat,
    this.lon,
  );

  /// Creates a [Coordinates] object from json
  factory Coordinates.fromJson(Map<String, dynamic> json) {
    return Coordinates(json['lat'], json['lon']);
  }

  /// Returns a [Map] with the object data
  Map<String, dynamic> toJson() {
    return {
      'lat': lat,
      'lon': lon,
    };
  }
}
