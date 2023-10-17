import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final counterStateProvider = StateProvider<int>((ref) => 0);


class CounterWidget extends ConsumerWidget {
  const CounterWidget({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CounterApp"),
      ),
      body: Consumer(builder: (context, ref, child) {
        int count = ref.watch(counterStateProvider);
        return Center(child: Text(count.toString(),style: TextStyle(fontSize: 40),));
      },),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(counterStateProvider.notifier).state++;
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
