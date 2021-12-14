import 'package:doan/views/Login/login.dart';
import 'package:doan/views/Login/password.dart';
import 'package:doan/views/SignUp/confirmphonenumber.dart';
import 'package:doan/views/SignUp/signup.dart';
import 'package:doan/views/home/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ĐỒ ÁN LẬP TRING ANDROID',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const homepage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}