/// Weather details
class Details {
  int _id;
  String _main;
  String _description;
  String _icon;

  /// Creates a [Details] object
  Details(
    this._id,
    this._main,
    this._description,
    this._icon,
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
      'id': _id,
      'main': _main,
      'description': _description,
      'icon': _icon,
    };
  }

  /// Weather condition id
  int get id => _id;

  /// Group of weather parameters (Rain, Snow, Extreme etc.)
  String get main => _main;

  /// Weather condition within the group.
  String get description => _description;

  /// Weather icon id
  String get icon => _icon;
}
