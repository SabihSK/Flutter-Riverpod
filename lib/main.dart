
import 'package:flutter_course/provider_and_riverpod/riverpod_practice.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_course/provider_and_riverpod/provider_practice.dart';

void main(List<String> args){
  runApp(ProviderScope(child: const MyApp(),),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RivPrac(),
    );
  }
}


