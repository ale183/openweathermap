class Snow {
  num? _oneHour;
  num? _threeHours;

  Snow(
    this._oneHour,
    this._threeHours,
  );

  factory Snow.fromJson(Map<String, dynamic> json) {
    return Snow(
      json['1h'],
      json['3h'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      '1h': _oneHour,
      '3h': _threeHours,
    };
  }

  num? get oneHour => _oneHour;
  num? get threeHours => _threeHours;
}
