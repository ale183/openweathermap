import 'dart:io' as io;

import 'package:openweathermap/openweathermap.dart';
import 'package:openweathermap/openweather_entities.dart';
import 'package:test/test.dart';

void main() {
  late OpenWeather openWeather;
  var key = io.Platform.environment['OPENWEATHER_TOKEN'];
  var cityName = 'Bergamo';

  setUp(() async {
    if (key == null) {
      throw ('OPENWEATHER_TOKEN missing');
    }
    openWeather = OpenWeather(key);
  });

  test(
    'Wrong API key test',
    () {
      expect(
        () async {
          await OpenWeather('wrongKey').currentWeatherByName(cityName);
        },
        throwsA(TypeMatcher<Exception>()),
      );
    },
    skip: false,
  );

  test(
    'Get city weather by name',
    () async {
      var data = await openWeather.currentWeatherByName(cityName);
      expect(data, isA<Weather>());
    },
    skip: false,
  );
}
