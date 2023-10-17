import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_course/future_provider/future_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final weatherProvider = FutureProvider<String>((ref) => fetchWeatherReport());


class WeatherScreen extends ConsumerWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todays Weather'),
      ),
      body: ref.watch(weatherProvider).when(data: (data) {
        return Center(child: Text(data),);
      }, error: (error, stackTrace) {
        return Text(error.toString());
      }, loading: () {
          return CircularProgressIndicator();
      },),
    );
  }
}
