import 'dart:convert';
import 'package:http/http.dart' as http;
import 'enums/enums.dart';
import 'package:openweathermap/openweather_entities.dart';

class OpenWeather {
  final String _key;
  final String _baseUrl = 'api.openweathermap.org';

  OpenWeather(this._key);

  Future<Weather> currentWeatherByName(
    String cityName, {
    Units unit = Units.STANDARD,
    Language lang = Language.EN,
  }) async {
    return Weather.fromJson(
      await _request(
        'weather',
        params: {
          'q': cityName,
          'units': unitsMappings[unit],
          'lang': languageMappings[lang],
        },
      ),
    );
  }

  Future<Map<String, dynamic>> _request(
    String method, {
    Map<String, dynamic> params,
  }) async {
    params?.updateAll((k, v) => '$v');
    var fparams = params?.cast<String, String>();
    fparams['appid'] = _key;
    var response = await http.get(
      Uri.https('$_baseUrl', '/data/2.5/$method', fparams),
    );
    var jsonBody = json.decode(response.body);
    if (response.statusCode == 200) {
      return jsonBody;
    } else {
      throw Exception('Open Weather Exception: ${jsonBody['message']}');
    }
  }
}
