
import 'dart:async';

import 'package:doan/resources/configs/config.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

// ignore: camel_case_types
class _WelcomeState extends State<Welcome> {

  Future<bool> isFirstTime() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    var isFirstTime = pref.getBool(firstTime);
    if (isFirstTime != null && !isFirstTime) {
      pref.setBool(firstTime, false);
      return false;
    } else {
      pref.setBool(firstTime, false);
      return true;
    }
  }
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      isFirstTime().then((isFirstTime) {
        isFirstTime
            ? Navigator.pushNamed(context, Routes.intro)
            : Navigator.pushNamed(context, Routes.login);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(MediaQuery.of(context).size.width / 10),
              child: Image.asset(Images.Logo),
            )
          ],
    ),
      )
    );
  }
}
