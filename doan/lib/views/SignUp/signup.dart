import 'package:doan/resources/configs/routes.dart';
import 'package:doan/views/SignUp/confirmphonenumber.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final txtsdt = TextEditingController() ;
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
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            }
          ),
          title: const Align(
            child: Text(
              'Tạo tài khoản',
              style: TextStyle(
              fontSize: 20,
              ),
            ),
            alignment: Alignment.centerLeft,
          ),                
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,        
          automaticallyImplyLeading: false, 
        ),
        body: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Column(                
            crossAxisAlignment: CrossAxisAlignment.start,           
            children:<Widget> [   
              const SizedBox(height: 50,),                     
              textphone,
              const SizedBox(height: 10,),
              textdescription,
              const SizedBox(height: 10,),
          Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: TextField(
                cursorColor: Colors.blue,
                autocorrect: false,
                style: const TextStyle(
                  fontSize: 20,
                ),
                decoration: const InputDecoration(
                  hintText: "Số điện thoại",
                ),
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.done,
                maxLength: 10,
                controller: txtsdt,
              ),
          ),
              const SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed (context, Routes.authenphone ,arguments: txtsdt.text
                    );
                  },
                  child: const Text(
                    'Tiếp tục',
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
              )
            ]
          ),
      ))
    );
  }
}

Widget textphone = Column(
  children: const <Widget>[
    Padding(padding: EdgeInsets.only(left: 255)),
    Text(
      'Nhập số điện thoại',
      style: TextStyle(
        fontSize: 26,

      ),
    ),
  ],
);

Widget textdescription = Column(
  children: const <Widget>[
    Padding(padding: EdgeInsets.only(left: 360)),
    Text(
      'Vui lòng nhập số điện thoại để đăng kí tài khoản',
      style: TextStyle(
        fontSize: 15,
      ),
    ),
  ],
);

