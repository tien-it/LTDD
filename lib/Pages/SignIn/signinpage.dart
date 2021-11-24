//import 'dart:html';

import 'package:flutter/material.dart';
class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: ListView(
            children: [
              Image.asset('asset/images/logo.jpg') ,
              const Text('Xin Chào',
                  style: TextStyle(
                      fontSize: 25 ,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Merienda One'
                      ),
                textAlign: TextAlign.center,

              ),
              const Text('Đăng nhập hoặc tạo Tài khoản ',
                style: TextStyle(
                    fontSize: 18 ,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Merienda One'
                ),
                textAlign: TextAlign.center,
              ),
              const  Padding(
                padding:  EdgeInsets.all(20.0),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.phone_android),
                    hintText: 'Nhập Số Điện Thoại'
                  ),
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.next,
                ),
              ),
              const  Padding(
                padding:  EdgeInsets.all(20.0),
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.vpn_key),
                      hintText: 'Mật Khẩu'),
                  textInputAction: TextInputAction.done,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextButton(
                    onPressed: (){},
                    child:const Text('ĐĂNG NHẬP',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25 ,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                    style: TextButton.styleFrom(
                          backgroundColor: Colors.red),

                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                   Text('quên mật khẩu ',
                    style: TextStyle(
                        fontSize: 14 ,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Merienda One',
                        decoration: TextDecoration.underline,
                        color: Colors.grey
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text('đăng ký tài khoản ',
                    style: TextStyle(
                        fontSize: 14 ,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Merienda One',
                        decoration: TextDecoration.underline,
                        color: Colors.grey
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              //const Spacer(),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    const Text('phương thức đăng nhập khác' ,
                      style: TextStyle(
                        fontSize: 14 ,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Merienda One',
                        color: Colors.grey
                    ),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:  [ 
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset("asset/icons/zalo.png"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset("asset/icons/google.png", height: 48, width: 48,),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset("asset/icons/facebook.png",height: 48, width: 48),
                        ),
                        ]
                    ),
                    const Text('phương thức đăng nhập khác' ,
                      style: TextStyle(
                          fontSize: 14 ,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Merienda One',
                          decoration: TextDecoration.underline,
                          color: Colors.grey
                      ),

                    ),
                  ],
                ),
              )
            ],
          ),
      )
    );
  }
}
