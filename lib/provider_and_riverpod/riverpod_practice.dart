import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final stringProvider = Provider<String>((ref) => 'I m Riverpod Provider');

class RivPrac extends ConsumerWidget {
  const RivPrac({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    String data = ref.read(stringProvider);
    return  Scaffold(
      body: Center(
        child: Text(
          data
        ),
      ),
    );
  }
}
