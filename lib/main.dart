
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final myprovider = Provider<String>(
      (ref) {
    return "Flutter Riverpod";
  },
);

void main(List<String> args){
  runApp(const ProviderScope(child:MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    String ourdata = ref.read<String>(myprovider);
    return Center(
      child: Text(
        ourdata,
      ),
    );
  }
}
