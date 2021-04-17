/// Snow data
class Snow {
  /// Snow volume for the last 1 hour
  final num? oneHour;

  /// Snow volume for the last 3 hour
  final num? threeHours;

  /// Creates a [Snow] object
  Snow(
    this.oneHour,
    this.threeHours,
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
      '1h': oneHour,
      '3h': threeHours,
    };
  }
}
