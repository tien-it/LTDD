import 'package:flutter/material.dart';
class DoiGioiTinh extends StatefulWidget {
  const DoiGioiTinh({Key? key}) : super(key: key);

  @override
  _DoiGioiTinhState createState() => _DoiGioiTinhState();
}

class _DoiGioiTinhState extends State<DoiGioiTinh> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Giới Tính"),
      ),

    );
  }
}
