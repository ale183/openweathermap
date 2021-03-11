import 'dart:io' as io;

import 'package:openweathermap/openweathermap.dart';
import 'package:openweathermap/openweather_entities.dart';
import 'package:test/test.dart';

void main() {
  late OpenWeather openWeather;
  var key = io.Platform.environment['OPENWEATHER_TOKEN'];
  var cityName = 'Bergamo';
  var cityId = 3182164;
  var cityCoordinates = Coordinates(45.698, 9.669);

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
      expect(data.id, equals(cityId));
      expect(data.name, equals(cityName));
    },
    skip: false,
  );

  test(
    'Get city weather by id',
    () async {
      var data = await openWeather.currentWeatherById(cityId);
      expect(data, isA<Weather>());
      expect(data.id, equals(cityId));
      expect(data.name, equals(cityName));
    },
    skip: false,
  );

  test(
    'Get city weather by coordinates',
    () async {
      var data = await openWeather.currentWeatherByCoord(cityCoordinates);
      expect(data, isA<Weather>());
      expect(data.id, equals(cityId));
      expect(data.name, equals(cityName));
    },
    skip: false,
  );
}
