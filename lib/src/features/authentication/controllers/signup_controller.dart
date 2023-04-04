import 'package:flutter/material.dart';

class SignUpController extends ChangeNotifier {
  final email = TextEditingController();
  final password = TextEditingController();
  final fullName = TextEditingController();
  final phoneNo = TextEditingController();

  void registerUser(String email, String password) {}
}
