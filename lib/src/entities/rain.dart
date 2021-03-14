class Rain {
  num? _oneHour;
  num? _threeHours;

  Rain(
    this._oneHour,
    this._threeHours,
  );

  factory Rain.fromJson(Map<String, dynamic> json) {
    return Rain(
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
