import 'package:flutter_riverpod/flutter_riverpod.dart';

final numbersProvider = StreamProvider<int>((ref) {
  return FetchNumbers();
},);



Stream<int> FetchNumbers(){
  return Stream<int>.periodic(
    const Duration(seconds: 2),
      (number) => number,
  ).take(100);
}