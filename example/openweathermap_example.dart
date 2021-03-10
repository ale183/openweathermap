import 'package:openweathermap/openweathermap.dart';

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
}
