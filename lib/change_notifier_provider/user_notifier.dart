import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final userProvider  = ChangeNotifierProvider<User>((ref) => User());

class User extends ChangeNotifier{
  String userName = 'Taha';

  void changeUserName(){
    userName = "Taha Ali";
    notifyListeners()
  }
}