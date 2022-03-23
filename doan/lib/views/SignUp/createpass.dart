
import 'dart:convert';

import 'package:doan/data_sources/local/local.dart';
import 'package:doan/models/account_model.dart';
import 'package:doan/resources/configs/routes.dart';
import 'package:doan/views/Login/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CreatePassPage extends StatefulWidget {
  final String data ;
  const CreatePassPage({Key? key , required this.data}) : super(key: key);
  @override
  State<CreatePassPage> createState() => _CreatePassPageState(this.data);
}
bool isHiddenPassword1 = true;
bool isHiddenPassword2 = true;
class _CreatePassPageState extends State<CreatePassPage> {
  final String data ;
  _CreatePassPageState(this.data) ;
  final txtname = TextEditingController() ;
  final txtemail = TextEditingController() ;
  final txtpassword = TextEditingController() ;
  final txtpassword_cofirm = TextEditingController() ;
  final txtimage = TextEditingController() ;
  @override
  Widget build(BuildContext context){
    //String name , String phone, String email ,String password, String password_confirm, String image

    return GestureDetector(
      onTap: (){
        FocusScopeNode currentFocus = FocusScope.of(context);
        if(!currentFocus.hasPrimaryFocus){
            currentFocus.unfocus();
        }
      },
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
             // Navigator.pop(context);
            }
          ),
          title: const Align(
            child: Text(
              'Điền thông tin',
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
              Padding(
                padding: const EdgeInsets.only(left: 30,top: 30),
                child: Column(
                  children: const <Widget>[
                    Text(
                      'Đăng kí tài khoản',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Column(
                  children: const <Widget>[
                    Text(
                      'Vui lòng điền thông tin đăng kí',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 35,),
              Padding(
                padding: const EdgeInsets.only(left: 30,right: 30),
                child: Column(
                  children:  <Widget>[
                    TextField(
                      cursorColor: Colors.blue,
                      style: const TextStyle(
                          fontSize: 20
                      ),
                      decoration: const InputDecoration(
                        prefixIcon:Icon(Icons.person),
                        labelText: 'Tên đăng nhập',
                        border: OutlineInputBorder(
                          borderRadius:  BorderRadius.all(Radius.circular(20.0)),
                        ),
                      ),
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      controller: txtname,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.only(left: 30,right: 30),
                child: Column(
                  children: <Widget>[
                    TextField(
                      cursorColor: Colors.blue,
                      style: const TextStyle(
                          fontSize: 20
                      ),
                      decoration: const InputDecoration(
                        labelText: 'Email',
                        prefixIcon:Icon(Icons.email),
                        border: OutlineInputBorder(
                          borderRadius:  BorderRadius.all(Radius.circular(20.0)),

                        ),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      controller: txtemail,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.only(left: 30,right: 30),
                child: Column(
                  children: <Widget>[
                    TextField(
                      cursorColor: Colors.blue,
                      style: const TextStyle(
                          fontSize: 20
                      ),
                      decoration: const InputDecoration(
                        labelText: 'IMAGE',
                        prefixIcon:Icon(Icons.email),
                        border: OutlineInputBorder(
                          borderRadius:  BorderRadius.all(Radius.circular(20.0)),

                        ),
                      ),
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      controller: txtimage,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.only(left: 30,right: 30),
                child: Column(
                  children:  <Widget>[
                    TextField(   
                      autocorrect: false,
                      obscureText: isHiddenPassword1,
                      style: const TextStyle
                        (
                          fontSize: 20,                     
                        ),
                      decoration: InputDecoration(   
                        prefixIcon: const Icon(Icons.lock),
                        suffixIcon:InkWell(
                        onTap: _togglePasswordView1,
                        child: const  Icon(Icons.visibility),
                        ),
                        labelText:  "Nhập mật khẩu",     
                        border: const OutlineInputBorder( 
                          borderRadius:  BorderRadius.all(Radius.circular(20.0)),
                        ),        
                      ),        
                      keyboardType: TextInputType.text,     
                      textInputAction: TextInputAction.next,
                      controller: txtpassword,
                    ),    
                  ],
                ),
              ),
              const SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.only(left: 30,right: 30),
                child: Column(
                  children:  <Widget>[
                    TextField(   
                      autocorrect: false,
                      obscureText: isHiddenPassword2,
                      style: const TextStyle
                        (
                          fontSize: 20,                     
                        ),
                      decoration: InputDecoration(   
                        prefixIcon: const Icon(Icons.lock),
                        suffixIcon:InkWell(
                        onTap: _togglePasswordView2,
                        child: const  Icon(Icons.visibility),
                        ),
                        labelText:  "Nhập lại mật khẩu",     
                        border: const OutlineInputBorder( 
                          borderRadius:  BorderRadius.all(Radius.circular(20.0)),
                        ),        
                      ),        
                      keyboardType: TextInputType.text,     
                      textInputAction: TextInputAction.next,
                      controller: txtpassword_cofirm,
                    ),    
                  ],
                ),
              ),
              const SizedBox(height: 100,),
              Column(
                children:<Widget> [
                  const Padding(
                      padding: EdgeInsets.only(left: 500)
                  ),
                  ElevatedButton(
                    onPressed:() {
                      SignUp(context, txtname.text,data ,txtemail.text, txtpassword.text, txtpassword_cofirm.text, txtimage.text );
                    },
                    child: const Text(
                      'Tạo tài khoản',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    style: TextButton.styleFrom(
                      minimumSize: const Size(355,40),
                      backgroundColor: Colors.red,
                    ),
                  ),
                ],
              )
            ]
          ),
        )
      ),
    );
  }
  void _togglePasswordView1(){
    setState((){
      isHiddenPassword1 = !isHiddenPassword1;
    });
  }
  void _togglePasswordView2(){
    setState((){
      isHiddenPassword2 = !isHiddenPassword2;
    });
  }
}
Future<void> SignUp( BuildContext context,String name , String phone, String email ,String password, String password_confirm, String image) async {
  print( name + phone + email + password  + image);
  var client = http.Client();
  var response =
  await client.post(Uri.parse('http://10.0.2.2:8000/api/register'),
      body: ({
        'MAKHACHHANG':phone,
        'TENHIENTHI' : name  ,
        'SODIENTHOAI': phone,
        'EMAIL' :email ,
        'MATKHAU': password,
        'MATKHAU_confirmation' :password_confirm,
        'ANH' : image ,
        'PHUONGTHUCDANGNHAP': '1'  ,
        'TRANGTHAI' : '1'
      }));
  print(response.body);
  Map<String, dynamic> userMap  = jsonDecode(response.body);
  myuser = taikhoan.fromJson(userMap);
  print(response.body);
  if (response.statusCode == 201) {
    ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(
        const SnackBar(
          content: Text('Đăng ky thành công'),
        ),
      );
    Navigator.pushNamed(
        context, Routes.home );
  }
  else {
    ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(
        const SnackBar(
          content: Text('Thông Tin Không Hợp Lệ'),
        ),
      );
  }
}