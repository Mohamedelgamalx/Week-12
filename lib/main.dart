import 'package:flutter/material.dart';
import 'package:week_12/forgotPassword.dart';
import 'package:week_12/login.dart';
import 'package:week_12/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Login.route,
      routes: {
        Login.route : (c) => Login(),
        Signup.route : (c) => Signup(),
        ForgotPassword.route : (c) => const ForgotPassword(),
      },
    );
  }
}