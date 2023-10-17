
import 'package:flutter_course/future_provider/weather_report.dart';
import 'package:flutter_course/provider_and_riverpod/riverpod_practice.dart';
import 'package:flutter_course/state_provider/state_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';


void main(List<String> args){
  runApp(ProviderScope(child:const MyApp(),),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _buildButton(context),
      ),
    );
  }
  Widget _buildButton(BuildContext context){
    return ElevatedButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=> WeatherScreen()));
      },
      child: Text('FutureProvider'),
    );
  }
}





