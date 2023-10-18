import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dummy_weather_report.dart';


final weatherProvider = FutureProvider.autoDispose.family<String,String>((ref,cityName) => FetchWeatherReport(cityName));


class WeatherScreen extends ConsumerWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todays Weather'),
      ),
      body: ref.watch(weatherProvider('Islamabad')).when(data: (data) {
        return Center(child: Text(data),);
      }, error: (error, stackTrace) {
        return Text(error.toString());
      }, loading: () {
        return CircularProgressIndicator();
      },),
    );
  }
}
