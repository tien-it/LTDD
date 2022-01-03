
import 'package:doan/resources/configs/config.dart';
import 'package:doan/views/intro/welcome.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  _IntroPageState createState() => _IntroPageState();
}

// ignore: camel_case_types
class _IntroPageState extends State<IntroPage> {
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
            child: btnStart(context),
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

Widget btnStart(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(30, 0, 30, 20),
    child: ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Welcome()),
        );
      },
      child: const Text(
        'Start',
        style: TextStyle(
          fontSize: 20,
          color: Colors.white,
        ),
      ),
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(355, 40),
        primary: Colors.blue,
        onPrimary: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32.0),
          //backgroundColor: Colors.blue,
        ),
      ),
    ),
  );
}
