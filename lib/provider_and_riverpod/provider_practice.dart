import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProvPrac extends StatelessWidget {
  const ProvPrac({super.key});

  @override
  Widget build(BuildContext context) {
    int data = Provider.of<int>(context);
    return  Scaffold(
      body: Center(
        child: Text(
          data.toString(),
        ),
      ),
    );
  }
}
