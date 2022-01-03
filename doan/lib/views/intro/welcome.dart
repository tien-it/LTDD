import 'package:doan/resources/configs/image.dart';
import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

// ignore: camel_case_types
class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          const SizedBox(
            height: 120,
          ),
          Padding(
            padding: const EdgeInsets.all(35),
            child: logo,
          ),
          Padding(
            padding: const EdgeInsets.all(50),
            child: txtWelcome,
          )
        ],
      ),
    );
  }
}

Widget logo = Stack(
  children: [
    Image.asset(Images.Logo),
  ],
);
Widget txtWelcome = Column(
  children: const [
    Padding(padding: EdgeInsets.only(left: 260)),
    Text(
      "Welcome to app",
      style: TextStyle(
        fontSize: 22,
        color: Colors.blue,
      ),
    ),
  ],
);
