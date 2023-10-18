Future<String> FetchWeatherReport(String city) async {
  return await Future.delayed(Duration(seconds: 3),
        () => 'City: $city | Temp: 33C',
  );
}