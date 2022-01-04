import 'package:doan/views/AddressBook/addressnullpage.dart';
import 'package:doan/views/AddressBook/addresspage.dart';
import 'package:doan/views/BillInfomation/billinfonullpage.dart';
import 'package:doan/views/BillInfomation/billinforpage.dart';
import 'package:doan/views/Buyafter/afternullpage.dart';
import 'package:doan/views/Buyafter/afterpage.dart';
import 'package:doan/views/ForgotPassword/createnewpass.dart';
import 'package:doan/views/ForgotPassword/phonepage.dart';
import 'package:doan/views/Login/login.dart';
import 'package:doan/views/Login/password.dart';
import 'package:doan/views/Love/lovenullpage.dart';
import 'package:doan/views/Love/lovepage.dart';
import 'package:doan/views/Saw/sawnullpage.dart';
import 'package:doan/views/Saw/sawpage.dart';
import 'package:doan/views/SignUp/confirmphonenumber.dart';
import 'package:doan/views/SignUp/createpass.dart';
import 'package:doan/views/SignUp/signup.dart';
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
      home: const LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}


