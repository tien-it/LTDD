import 'package:doan/views/AddressBook/addresspage.dart';
import 'package:doan/views/BillInfomation/billinforpage.dart';
import 'package:doan/views/Buyafter/afternullpage.dart';
import 'package:doan/views/Buyafter/afterpage.dart';
import 'package:doan/views/Login/login.dart';
import 'package:doan/views/Login/password.dart';
import 'package:doan/views/Saw/sawpage.dart';
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
import 'package:doan/views/user/order/order.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Routes {
  static const String home = "/home";
  static const String signup = "/signup";
  static const String intro = "/intro";
  static const String wellcom = "/wellcome";
  static const String login = "/login";
  static const String password = "/password";
  static const String account_infomation = "/account_infomation";
  static const String change_email = "/change_email";
  static const String change_gender = "/change_gender";
  static const String change_fullname = "/change_fullname";
  static const String change_password = "/change_password";
  static const String change_birthday = "/change_birthday";
  static const String change_phone = "/change_phone";
  static const String change_username = "/change_username";
  static const String buylate = "/buylate";
  static const String history = "/history";
  static const String address = "/address";
  static const String paymentinfo = "/paymentinfo";
  static const String order = "/order";

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
      case login:       
        return MaterialPageRoute(
          builder: (context) {
            return LoginPage();
          },
          fullscreenDialog: true,
        );
      // case password:
      // var data = settings.arguments as String;
      //   return MaterialPageRoute(
      //     builder: (context) {
      //       return PassWordPage(data: data);
      //     },
      //     fullscreenDialog: true,
      //   );
      case buylate:
        return MaterialPageRoute(
          builder: (context) {
            return BuyAfterPage();
          },
          fullscreenDialog: true,
        );
      case address:
        return MaterialPageRoute(
          builder: (context) {
            return AddressPage();
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
      case history:
        return MaterialPageRoute(
          builder: (context) {
            return SawPage();
          },
          fullscreenDialog: true,
        );
      case paymentinfo:
        return MaterialPageRoute(
          builder: (context) {
            return BillInfoPage();
          },
          fullscreenDialog: true,
        );
      case order:
        return MaterialPageRoute(
          builder: (context) {
            return DonHang();
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
