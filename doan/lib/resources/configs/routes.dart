import 'package:doan/views/Login/login.dart';
import 'package:doan/views/SignUp/signup.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String home = "/home";
  static const String  signup= "/signup";
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
    case home:
      return MaterialPageRoute(
        builder: (context) {
          return LoginPage();
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
