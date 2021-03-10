class Details {
  int _id;
  String _main;
  String _description;
  String _icon;

  Details(
    this._id,
    this._main,
    this._description,
    this._icon,
  );

  factory Details.fromJson(Map<String, dynamic> json) {
    return Details(
      json['id'],
      json['main'],
      json['description'],
      json['icon'],
    );
  }

  static List<Details> fromJsonArray(List<dynamic> array) {
    return List.generate(array.length, (i) => Details.fromJson(array[i]));
  }

  Map<String, dynamic> toJson() {
    return {
      'id': _id,
      'main': _main,
      'description': _description,
      'icon': _icon,
    };
  }

  int get id => _id;
  String get main => _main;
  String get description => _description;
  String get icon => _icon;
}
