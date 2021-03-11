import 'package:openweathermap/openweathermap.dart';
import 'package:openweathermap/openweather_entities.dart';

void main() async {
  var op = OpenWeather('');
  var cityByName = await op.currentWeatherByName(
    'Bergamo',
    units: Units.METRIC,
  );
  print('By Name\nName: ${cityByName.name} (ID: ${cityByName.id})\n'
      'Temp Min: ${cityByName.temperature.tempMin}\n'
      'Temp Max: ${cityByName.temperature.tempMax}');

  print('----------');

  var cityById = await op.currentWeatherById(
    3182164,
    units: Units.METRIC,
  );
  print('By ID\nName: ${cityById.name} (ID: ${cityById.id})\n'
      'Temp Min: ${cityById.temperature.tempMin}\n'
      'Temp Max: ${cityById.temperature.tempMax}');

  print('----------');

  var cityByCoord = await op.currentWeatherByCoord(
    Coordinates(45.698, 9.669),
    units: Units.METRIC,
  );
  print('By Coordinates\nName: ${cityByCoord.name} (ID: ${cityByCoord.id})\n'
      'Temp Min: ${cityByCoord.temperature.tempMin}\n'
      'Temp Max: ${cityByCoord.temperature.tempMax}');
}
