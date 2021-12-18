import 'package:flutter/material.dart';
class SuaEmail extends StatefulWidget {
  const SuaEmail({Key? key}) : super(key: key);

  @override
  _SuaEmailState createState() => _SuaEmailState();
}

class _SuaEmailState extends State<SuaEmail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Email"),
      ),

    );
  }
}
