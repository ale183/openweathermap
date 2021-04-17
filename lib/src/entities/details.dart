/// Weather details
class Details {
  /// Weather condition id
  final int id;

  /// Group of weather parameters (Rain, Snow, Extreme etc.)
  final String main;

  /// Weather condition within the group.
  final String description;

  /// Weather icon id
  final String icon;

  /// Creates a [Details] object
  Details(
    this.id,
    this.main,
    this.description,
    this.icon,
  );

  /// Creates a [Details] object from json
  factory Details.fromJson(Map<String, dynamic> json) {
    return Details(
      json['id'],
      json['main'],
      json['description'],
      json['icon'],
    );
  }

  /// Creates a list of [Details] from a list
  static List<Details> fromJsonArray(List<dynamic> array) {
    return List.generate(array.length, (i) => Details.fromJson(array[i]));
  }

  /// Returns a [Map] with the object data
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'main': main,
      'description': description,
      'icon': icon,
    };
  }
}
