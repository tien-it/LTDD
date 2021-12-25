import 'package:doan/views/AddressBook/addressnullpage.dart';
import 'package:doan/views/AddressBook/addresspage.dart';
import 'package:doan/views/BillInfomation/billinfonullpage.dart';
import 'package:doan/views/BillInfomation/billinforpage.dart';
import 'package:doan/views/ForgotPassword/createnewpass.dart';
import 'package:doan/views/ForgotPassword/phonepage.dart';
import 'package:doan/views/Login/login.dart';
import 'package:doan/views/Login/password.dart';
import 'package:doan/views/Saw/sawnullpage.dart';
import 'package:doan/views/Saw/sawpage.dart';
import 'package:doan/views/SignUp/confirmphonenumber.dart';
import 'package:doan/views/SignUp/createpass.dart';
import 'package:doan/views/SignUp/signup.dart';
import 'package:doan/views/home/home.dart';
<<<<<<< HEAD
import 'package:doan/views/taikhoan/account_page.dart';
import 'package:doan/views/taikhoan/canhan/sua_email.dart';
import 'package:doan/views/taikhoan/canhan/sua_gioitinh.dart';
import 'package:doan/views/taikhoan/canhan/sua_hovaten.dart';
import 'package:doan/views/taikhoan/canhan/sua_matkhau.dart';
import 'package:doan/views/taikhoan/canhan/sua_ngaysinh.dart';
import 'package:doan/views/taikhoan/canhan/sua_sodienthoai.dart';
import 'package:doan/views/taikhoan/canhan/sua_tendangnhap.dart';
import 'package:doan/views/taikhoan/canhan/thongtincanhan.dart';
import 'package:doan/views/taikhoan/donhang/donhang.dart';
=======
>>>>>>> AnhNhat
import 'package:doan/views/trangchu/trangchu.dart';
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
        // '/home': (context) => const getpage(),
        // '/': (context) => const AccountPage(),
        // '/thong_tin_ca_nhan': (context) => const ThongTinCaNhan(),
        // '/sua_hovaten': (context) => const Sua_HovaTen(),
        // '/sua_email': (context) => const SuaEmail(),
        // '/sua_ngaysinh': (context) => const SuaNgaySinh(),
        // '/sua_sodienthoai': (context) => const SuaSoDienThoai(),
        // '/doigioitinh': (context) => const DoiGioiTinh(),
        // '/doimatkhau': (context) => const DoiMatKhau(),
        // '/suatendangnhap': (context) => const SuaTenDangNhap(),
        // '/donhang': (context) => const DonHang(),
        '/': (context) => const homepage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
