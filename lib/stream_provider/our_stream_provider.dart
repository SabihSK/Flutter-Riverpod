import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_course/stream_provider/fetch_numbers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NumberScreen extends ConsumerWidget {
  const NumberScreen({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    var asyncValue = ref.watch(numbersProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text('Numbers'),
      ),
      body: asyncValue.when(data: (data) {
        return Center(child: Text(data.toString()),);
      }, error: (error, stackTrace) {
        return Center(child: Text(error.toString()),);
      }, loading: () {
        return Center(child: CircularProgressIndicator(),);
      },),
    );
  }
}
