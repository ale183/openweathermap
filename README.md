# openweathermap

## Example
```dart
import 'package:openweathermap/openweathermap.dart';

void main() async{
    var openWeather = OpenWeather(apiKey);
    var result = await openWeather.currentWeatherByName('Bergamo');
    print('Name: ${result.name}\nTemp: ${result.temperature.temp}');
}
```

## Get openweathermap
Add openweathermap on `pubspec.yaml`:
```yaml
dependencies:
    openweathermap:
        git: https://github.com/ale183/openweathermap.git
```