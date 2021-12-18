import 'package:flutter/material.dart';
class SuaSoDienThoai extends StatefulWidget {
  const SuaSoDienThoai({Key? key}) : super(key: key);

  @override
  _SuaSoDienThoaiState createState() => _SuaSoDienThoaiState();
}

class _SuaSoDienThoaiState extends State<SuaSoDienThoai> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Số Điện Thoại"),
      ),

    );
  }
}

