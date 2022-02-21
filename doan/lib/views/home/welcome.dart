import 'package:flutter/material.dart';

class welcome extends StatefulWidget {
  const welcome({Key? key}) : super(key: key);

  @override
  _welcomeState createState() => _welcomeState();
}

// ignore: camel_case_types
class _welcomeState extends State<welcome> {
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
    Image.asset(
      "icons/logo02.jpg",
    ),
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
