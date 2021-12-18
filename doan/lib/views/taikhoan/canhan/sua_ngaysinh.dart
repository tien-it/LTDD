import 'package:flutter/material.dart';
class SuaNgaySinh extends StatefulWidget {
  const SuaNgaySinh({Key? key}) : super(key: key);

  @override
  _SuaNgaySinhState createState() => _SuaNgaySinhState();
}

class _SuaNgaySinhState extends State<SuaNgaySinh> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(
        title: Text("Ngày Sinh"),
      ),

    );
  }
}
