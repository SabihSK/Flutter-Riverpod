
import 'package:flutter_course/state_notifier_provider/state_notifier_provider.dart';
import 'package:flutter_course/stream_provider/our_stream_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';


void main(List<String> args){
  runApp(ProviderScope(child:MaterialApp(home: MyApp())),);
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

      },
      child: Text('WeatherScreen'),
    );
  }
}





