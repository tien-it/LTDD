import 'package:doan/views/SignUp/signup.dart';
import 'package:doan/views/home/page/homepage.dart';
import 'package:doan/views/intro/intro.dart';
import 'package:doan/views/intro/welcome.dart';
import 'package:doan/views/user/account/sua_email.dart';
import 'package:doan/views/user/account/sua_gioitinh.dart';
import 'package:doan/views/user/account/sua_hovaten.dart';
import 'package:doan/views/user/account/sua_matkhau.dart';
import 'package:doan/views/user/account/sua_ngaysinh.dart';
import 'package:doan/views/user/account/sua_sodienthoai.dart';
import 'package:doan/views/user/account/sua_tendangnhap.dart';
import 'package:doan/views/user/account/thongtincanhan.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String home = "/home";
  static const String signup = "/signup";
  static const String intro = "/intro";
  static const String wellcom = "/wellcome";
  static const String account_infomation = "/account_infomation";
  static const String change_email = "/change_email";
  static const String change_gender = "/change_gender";
  static const String change_fullname = "/change_fullname";
  static const String change_password = "/change_password";
  static const String change_birthday = "/change_birthday";
  static const String change_phone = "/change_phone";
  static const String change_username = "/change_username";

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(
          builder: (context) {
            return homepage();
          },
          fullscreenDialog: true,
        );
      case intro:
        return MaterialPageRoute(
          builder: (context) {
            return IntroPage();
          },
          fullscreenDialog: true,
        );
      case wellcom:
        return MaterialPageRoute(
          builder: (context) {
            return Welcome();
          },
          fullscreenDialog: true,
        );
      case signup:
        return MaterialPageRoute(
          builder: (context) {
            return SignUpPage();
          },
          fullscreenDialog: true,
        );
      case account_infomation:
        return MaterialPageRoute(builder: (context) {
          return ThongTinCaNhan();
        });
      case change_email:
        return MaterialPageRoute(builder: (context) {
          return SuaEmail();
        });
      case change_gender:
        return MaterialPageRoute(builder: (context) {
          return DoiGioiTinh();
        });
      case change_fullname:
        return MaterialPageRoute(builder: (context) {
          return Sua_HovaTen();
        });
      case change_password:
        return MaterialPageRoute(builder: (context) {
          return DoiMatKhau();
        });
      case change_birthday:
        return MaterialPageRoute(builder: (context) {
          return SuaNgaySinh();
        });
      case change_phone:
        return MaterialPageRoute(builder: (context) {
          return SuaSoDienThoai();
        });
      case change_username:
        return MaterialPageRoute(builder: (context) {
          return SuaTenDangNhap();
        });
      default:
        return MaterialPageRoute(
          builder: (context) {
            return Scaffold(
              appBar: AppBar(
                title: Text("Not Found"),
              ),
              body: Center(
                child: Text('No path for ${settings.name}'),
              ),
            );
          },
        );
    }
  }

  ///Singleton factory
  static final Routes _instance = Routes._internal();

  factory Routes() {
    return _instance;
  }

  Routes._internal();
}
