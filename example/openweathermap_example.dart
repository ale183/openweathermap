import 'package:openweathermap/openweathermap.dart';

void main() {
  var op = OpenWeather('');
  var json = op.currentWeatherByName(
    'Bergamo',
    unit: Units.METRIC,
  );
  json.then((value) => {
        print('Name: ${value.name}\n'
            'Temp Min: ${value.temperature.tempMin}\n'
            'Temp Max: ${value.temperature.tempMax}')
      });
}
