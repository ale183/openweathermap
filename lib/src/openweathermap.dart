import 'dart:convert';
import 'package:http/http.dart' as http;
import '../openweather_entities.dart';
import 'enums/enums.dart';

/// OpenWeather class
class OpenWeather {
  final String _key;
  final String _baseUrl = 'api.openweathermap.org';

  /// Basic constructor
  OpenWeather(this._key);

  /// Get current weather from city name
  Future<Weather> currentWeatherByName(
    String cityName, {
    Units units = Units.standard,
    Language lang = Language.en,
  }) async {
    return Weather.fromJson(
      await _request(
        'weather',
        params: {
          'q': cityName,
          'units': unitsMappings[units],
          'lang': languageMappings[lang],
        },
      ),
    );
  }

  /// Get current weather from city id
  Future<Weather> currentWeatherById(
    int id, {
    Units units = Units.standard,
    Language lang = Language.en,
  }) async {
    return Weather.fromJson(
      await _request(
        'weather',
        params: {
          'id': id,
          'units': unitsMappings[units],
          'lang': languageMappings[lang],
        },
      ),
    );
  }

  /// Get current weather from city coordinates
  Future<Weather> currentWeatherByCoord(
    Coordinates coord, {
    Units units = Units.standard,
    Language lang = Language.en,
  }) async {
    return Weather.fromJson(
      await _request(
        'weather',
        params: {
          'lat': coord.lat,
          'lon': coord.lon,
          'units': unitsMappings[units],
          'lang': languageMappings[lang],
        },
      ),
    );
  }

  /// Get current weather from city zip code
  Future<Weather> currentWeatherByZip(
    int zipCode, {
    Units units = Units.standard,
    Language lang = Language.en,
  }) async {
    return Weather.fromJson(
      await _request(
        'weather',
        params: {
          'zip': zipCode,
          'units': unitsMappings[units],
          'lang': languageMappings[lang],
        },
      ),
    );
  }

  /// Get daily forecast from city coordinates
  Future<Daily> dailyWeatherByCoord(
    Coordinates coord, {
    Units units = Units.standard,
    Language lang = Language.en,
  }) async {
    return Daily.fromJson(await _request('onecall', params: {
      'lat': coord.lat,
      'lon': coord.lon,
      'units': unitsMappings[units],
      'lang': languageMappings[lang],
      'exclude': 'minutely,hourly,alerts,current',
    }));
  }

  Future<Map<String, dynamic>> _request(
    String method, {
    required Map<String, dynamic> params,
  }) async {
    params.updateAll((k, v) => '$v');
    params['appid'] = _key;
    var response = await http.get(
      Uri.https('$_baseUrl', '/data/2.5/$method', params),
    );
    var jsonBody = json.decode(response.body);
    if (response.statusCode == 200) {
      return jsonBody;
    } else {
      throw Exception('Open Weather Exception: ${jsonBody['message']}');
    }
  }
}
