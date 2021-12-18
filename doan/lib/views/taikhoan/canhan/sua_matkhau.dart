import 'package:flutter/material.dart';
class DoiMatKhau extends StatefulWidget {
  const DoiMatKhau({Key? key}) : super(key: key);

  @override
  _DoiMatKhauState createState() => _DoiMatKhauState();
}

class _DoiMatKhauState extends State<DoiMatKhau> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mật Khẩu"),
      ),

    );
  }
}
