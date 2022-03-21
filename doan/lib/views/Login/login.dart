import 'dart:convert';

import 'package:doan/data_sources/local/local.dart';
import 'package:doan/models/account_model.dart';
import 'package:doan/models/login_model.dart';
import 'package:doan/resources/configs/routes.dart';
import 'package:doan/views/home/page/homepage.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}
 
 final sdt = TextEditingController();
class _LoginPageState extends State<LoginPage> {

  bool isHiddenPassword = true;
  
  final password = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: imageHead,
              ),
              const SizedBox(
                height: 5,
              ),
              texthelo,
              const SizedBox(
                height: 3,
              ),

              const SizedBox(
                height: 10,
              ),
              textPhone,
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                child: Column(
                  children: <Widget>[
                    TextField(
                      autocorrect: false,
                      obscureText: isHiddenPassword,
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                      decoration: InputDecoration(
                        suffixIcon: InkWell(
                          onTap: _togglePasswordView,
                          child: const Icon(Icons.visibility),
                        ),
                        hintText: "Mật khẩu",
                      ),
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.done,
                      controller: password,                     
                    ),
                  ],
                )
            ),
              const SizedBox(
                height: 1,
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 0, 50, 20),
                child: ElevatedButton(
                  onPressed: () {      
                    
                    login(context,sdt.text ,password.text );
                  },
                  child: const Text(
                    'Đăng nhập',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  style: TextButton.styleFrom(
                    minimumSize: const Size(355, 40),
                    backgroundColor: Colors.red,
                  ),
                ),
              ),
              const SizedBox(
                height: 1,
              ),
              textSignUp(context),
              const SizedBox(
                height: 70,
              ),
              textcontineu,
              iconLoginAnother,
              textRules
            ],
          ),
        ),
      ),
    );
  }
  void _togglePasswordView() {
    setState(() {
      isHiddenPassword = !isHiddenPassword;
    });
  }
}
Future<void> login( BuildContext context, String phone, String password) async {
    var client = http.Client();
    var response =
        await client.post(Uri.parse('http://127.0.0.1:8000/api/login'),
            body: ({
              'SODIENTHOAI': phone,
              'MATKHAU': password,
            }));
        print(response.body);
      //final prefs = await SharedPreferences.getInstance();
     //prefs.setString( 'user',response.body
    Map<String, dynamic> userMap  = jsonDecode(response.body);

      myuser = taikhoan.fromJson(userMap);
        print(response.body);

    if (response.statusCode == 201) {
      LoginRequestModel(response.body);
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const homepage(),
          ));
    }
    else {
      ScaffoldMessenger.of(context)
        ..removeCurrentSnackBar()
        ..showSnackBar(
          const SnackBar(
            content: Text('Số điện thoại hoặc mật khẩu không đúng'),
          ),
        );
    }
  }

Widget buttoncontineu(BuildContext context,String sdt,String password) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(50, 0, 50, 20),
    child: ElevatedButton(
      onPressed: () {      
        print(sdt + password);
        //login(context,sdt ,password );
      },
      child: const Text(
        'Đăng nhập',
        style: TextStyle(
          fontSize: 20,
          color: Colors.white,
        ),
      ),
      style: TextButton.styleFrom(
        minimumSize: const Size(355, 40),
        backgroundColor: Colors.red,
      ),
    ),
  );
}

Widget imageHead = Stack(
  children: [
    Image.asset(
      "assets/icons/logo02.jpg",
    ),
    Positioned(
      top: 10,
      left: 10,
      child: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.clear, color: Colors.black, size: 30),
      ),
    ),
  ],
);

Widget texthelo = Column(
  children: const [
    Padding(padding: EdgeInsets.only(left: 180)),
    Text(
      "Xin chào ",
      style: TextStyle(
        fontSize: 30,
      ),
    ),
  ],
);


Widget textPhone = Padding(
  padding:const  EdgeInsets.fromLTRB(30, 0, 30, 20),
  child: TextField(
    cursorColor: Colors.blue,
    style: const TextStyle(
      fontSize: 20,
    ),
    decoration: const InputDecoration(
      hintText: "Số điện thoại",
    ),
    keyboardType: TextInputType.number,
    textInputAction: TextInputAction.done,
    maxLength: 10,
    controller: sdt,   
  ),
);

Widget textSignUp(BuildContext context) {
  return TextButton(
    onPressed: () {
      Navigator.pushNamed(context, Routes.signup);
    },
    child:Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children:  [
        Padding(padding: EdgeInsets.only()),
        Text(
          " tạo tài khoản",
          style: TextStyle(
            fontSize: 15,
          ),
        ),
        Padding(padding: EdgeInsets.only()),
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, Routes.fogot_password);
          }, child: Text( "Quên Mật Khẩu",),
        ),
      ],
    ),
  );
}

Widget textcontineu = Column(
  children: const [
    Padding(padding: EdgeInsets.only(left: 420)),
    Text(
      "Hoặc tiếp tục bằng",
      style: TextStyle(
        fontSize: 15,
        color: Colors.black38,
      ),
    ),
  ],
);

Widget iconLoginAnother = Container(
  alignment: Alignment.center,
  child: Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      const Padding(padding: EdgeInsets.only(left: 125)),
      IconButton(
        onPressed: () {},
        icon: Image.asset(
          "assets/icons/facebook.png",
        ),
        iconSize: 40,
      ),
      IconButton(
        onPressed: () {},
        icon: Image.asset(
          "assets/icons/icons8-google-48.png",
        ),
        iconSize: 40,
      ),
      IconButton(
        onPressed: () {},
        icon: Image.asset(
          "assets/icons/icons8-zalo-48.png",
        ),
        iconSize: 40,
      ),
    ],
  ),
);

Widget textRules = Row(
  children: [
    const Padding(padding: EdgeInsets.only(left: 40)),
    const Text(
      "Bằng việc tiếp tục, bạn đã chấp nhận",
      style: TextStyle(
        fontSize: 13,
        color: Colors.black45,
      ),
    ),
    TextButton(
      onPressed: () {},
      child: const Text(
        "điều khoản sử dụng",
        style: TextStyle(
          fontSize: 13,
          color: Color(0xFF90CAF9),
        ),
      ),
    ),
  ],
);