import 'package:doan/views/Login/login.dart';
import 'package:doan/views/Login/password.dart';
import 'package:doan/views/SignUp/confirmphonenumber.dart';
import 'package:doan/views/SignUp/signup.dart';
import 'package:doan/views/home/home.dart';
import 'package:doan/views/taikhoan/account_page.dart';
import 'package:doan/views/taikhoan/canhan/sua_email.dart';
import 'package:doan/views/taikhoan/canhan/sua_gioitinh.dart';
import 'package:doan/views/taikhoan/canhan/sua_hovaten.dart';
import 'package:doan/views/taikhoan/canhan/sua_matkhau.dart';
import 'package:doan/views/taikhoan/canhan/sua_ngaysinh.dart';
import 'package:doan/views/taikhoan/canhan/sua_sodienthoai.dart';
import 'package:doan/views/taikhoan/canhan/sua_tendangnhap.dart';
import 'package:doan/views/taikhoan/canhan/thongtincanhan.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ĐỒ ÁN LẬP TRING ANDROID',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      initialRoute: '/',
      routes: {
        '/home': (context) => const homepage(),
        '/': (context) => const AccountPage(),
        '/thong_tin_ca_nhan': (context) => const ThongTinCaNhan(),
        '/sua_hovaten': (context) => const Sua_HovaTen(),
        '/sua_email': (context) => const SuaEmail(),
        '/sua_ngaysinh': (context) => const SuaNgaySinh(),
        '/sua_sodienthoai': (context) => const SuaSoDienThoai(),
        '/doigioitinh': (context) => const DoiGioiTinh(),
        '/doimatkhau': (context) => const DoiMatKhau(),
        '/suatendangnhap': (context) => const SuaTenDangNhap(),


      },
      debugShowCheckedModeBanner: false,
    );
  }
}