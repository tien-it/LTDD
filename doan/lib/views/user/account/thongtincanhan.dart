
import 'package:doan/data_sources/local/local.dart';
import 'package:doan/models/account_model.dart';
import 'package:doan/resources/configs/config.dart';
//import 'package:doan/resources/configs/config.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class ThongTinCaNhan extends StatefulWidget {
  const ThongTinCaNhan({Key? key}) : super(key: key);

  @override
  _ThongTinCaNhanState createState() => _ThongTinCaNhanState();
}
class _ThongTinCaNhanState extends State<ThongTinCaNhan> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title:const Text("Thông Tin Tài Khoản "),
      ),
      body: getbody(context),
    );
  }
}

getbody(BuildContext context) {
  return
   ListView(
    children: [
      // ListTile(
      //   leading: const Icon(Icons.person_outline, size: 30,),
      //   title: const Text('Họ và Tên'),
      //   subtitle: Text(myuser.name),
      //   trailing: IconButton( icon: Icon(Icons.arrow_forward_ios_outlined ),
      //     onPressed: (){
      //       Navigator.pushNamed(context, Routes.change_fullname);
      //     },),
      // ),
      Container(height: 5 , color: Colors.tealAccent,),
      ListTile(
        leading: const  Icon(Icons.people_outline, size: 30),
        title: const Text('Tên đăng nhập'),
        subtitle: Text(myuser.username),
        trailing: IconButton( icon: const Icon(Icons.arrow_forward_ios_outlined ),
          onPressed: (){
            Navigator.pushNamed(context,Routes.change_username);
          },),
      ),
      Container(height: 5 , color: Colors.tealAccent,),
      // ListTile(
      //   leading: const Icon(Icons.event, size: 30),
      //   title: const Text('Ngày Sinh'),
      //   subtitle: Text(myuser.birthday.toString()),
      //   trailing: IconButton( icon:const Icon(Icons.arrow_forward_ios_outlined ),
      //     onPressed: (){
      //       Navigator.pushNamed(context,Routes.change_birthday);
      //     },),
      // ),
      Container(height: 5 , color: Colors.tealAccent,),
      ListTile(
        leading:const Icon(Icons.mail_outline ,size: 30),
        title: const Text('Email'),
        subtitle: Text(myuser.email),
        trailing: IconButton( icon: const Icon(Icons.arrow_forward_ios_outlined ),
          onPressed: (){
            Navigator.pushNamed(context,Routes.change_email);
          },),
      ),
      Container(height: 5 , color: Colors.tealAccent,),
      ListTile(
        leading:const Icon(Icons.call, size: 30),
        title: const Text('Số Điện Thoại'),
        subtitle: Text(myuser.phone),
        trailing: IconButton( icon:const  Icon(Icons.arrow_forward_ios_outlined ),
          onPressed: (){
            Navigator.pushNamed(context,Routes.change_phone);
          },),
      ),Container(height: 5 , color: Colors.tealAccent,),
      // ListTile(
      //   leading:const Icon(Icons.transgender, size: 30),
      //   title:const  Text('Giới Tính'),
      //   subtitle: Text(myuser.gender),
      //   trailing: IconButton( icon:const  Icon(Icons.arrow_forward_ios_outlined ),
      //     onPressed: (){
      //       Navigator.pushNamed(context,Routes.change_gender);
      //     },),
      // ),Container(height: 5 , color: Colors.tealAccent,),
      ListTile(
        leading:const Icon(Icons.lock_outline, size: 30),
        title: const Text('Đổi Mật Khẩu'),
        trailing: IconButton( icon:const Icon(Icons.arrow_forward_ios_outlined ),
          onPressed: (){
            Navigator.pushNamed(context,Routes.change_password);
          },),
      ),
    ],
  );
}




