/// Rain data
class Rain {
  /// Rain volume for the last 1 hour
  final num? oneHour;

  /// Rain volume for the last 3 hours
  final num? threeHours;

  /// Creates a [Rain]
  Rain(
    this.oneHour,
    this.threeHours,
  );

  /// Creates a [Rain] object from json
  factory Rain.fromJson(Map<String, dynamic> json) {
    return Rain(
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
