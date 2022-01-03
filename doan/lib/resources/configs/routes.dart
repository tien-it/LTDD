
import 'package:doan/views/SignUp/signup.dart';
import 'package:doan/views/home/page/homepage.dart';
import 'package:doan/views/intro/intro.dart';
import 'package:doan/views/intro/welcome.dart';
import 'package:flutter/material.dart';

class Routes {

  static const String home = "/home";
  static const String  signup= "/signup";
  static const String  intro= "/intro";
  static const String  wellcom= "/wellcome";


  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
    case home:
      return MaterialPageRoute(
        builder: (context) {
          return homepage();
        },
        fullscreenDialog: true,
      );
      case intro:
        return MaterialPageRoute(
          builder: (context) {
            return IntroPage();
          },
          fullscreenDialog: true,
        );
      case wellcom:
        return MaterialPageRoute(
          builder: (context) {
            return Welcome();
          },
          fullscreenDialog: true,
        );
      case signup:
        return MaterialPageRoute(
          builder: (context) {
            return SignUpPage();
          },
          fullscreenDialog: true,
        );
      default:
        return MaterialPageRoute(
          builder: (context) {
            return Scaffold(
              appBar: AppBar(
                title: Text("Not Found"),
              ),
              body: Center(
                child: Text('No path for ${settings.name}'),
              ),
            );
          },
        );
    }
  }

  ///Singleton factory
  static final Routes _instance = Routes._internal();
  factory Routes() {
    return _instance;
  }

  Routes._internal();
}
