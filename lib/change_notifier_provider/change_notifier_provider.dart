import 'package:flutter/cupertino.dart';
import 'package:flutter_course/change_notifier_provider/user_notifier.dart';
import 'package:flutter_course/state_notifier_provider/counter_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

class UserScreen extends ConsumerWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {

    return Scaffold(
      appBar: AppBar(
        title: Text('User'),
      ),
      body: Center(
          child: Consumer(
            builder: (context, ref, child) {
              var data = ref.watch(userProvider);
              return Text(data.userName);
            },
          ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(userProvider.notifier).changeUserName();
        },
        child: Icon(Icons.change_circle ),
      ),
    );
  }
}
