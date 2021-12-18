import 'package:flutter/material.dart';
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
  return ListView(
    children: [

      ListTile(
        leading: const Icon(Icons.person_outline, size: 30,),
        title: const Text('Họ và Tên'),
        subtitle: Text(" Đinh Văn Tiến"),
        trailing: IconButton( icon: Icon(Icons.arrow_forward_ios_outlined ),
          onPressed: (){
            Navigator.pushNamed(context, '/sua_hovaten');
          },),
      ),
      Container(height: 5 , color: Colors.tealAccent,),
      ListTile(
        leading: const  Icon(Icons.people_outline, size: 30),
        title: const Text('Tên đăng nhập'),
        subtitle: Text("vantien1308"),
        trailing: IconButton( icon: const Icon(Icons.arrow_forward_ios_outlined ),
          onPressed: (){
            Navigator.pushNamed(context,'/suatendangnhap');
          },),
      ),
      Container(height: 5 , color: Colors.tealAccent,),
      ListTile(
        leading: const Icon(Icons.event, size: 30),
        title: const Text('Ngày Sinh'),
        subtitle: Text("11/12/2001"),
        trailing: IconButton( icon:const Icon(Icons.arrow_forward_ios_outlined ),
          onPressed: (){
            Navigator.pushNamed(context,'/sua_ngaysinh');
          },),
      ),
      Container(height: 5 , color: Colors.tealAccent,),
      ListTile(
        leading:const Icon(Icons.mail_outline ,size: 30),
        title: const Text('Email'),
        subtitle: Text("vantien@gmail.com"),
        trailing: IconButton( icon: const Icon(Icons.arrow_forward_ios_outlined ),
          onPressed: (){
            Navigator.pushNamed(context,'/sua_email');
          },),
      ),
      Container(height: 5 , color: Colors.tealAccent,),
      ListTile(
        leading:const Icon(Icons.call, size: 30),
        title: const Text('Số Điện Thoại'),
        subtitle: Text("0327688126"),
        trailing: IconButton( icon:const  Icon(Icons.arrow_forward_ios_outlined ),
          onPressed: (){
            Navigator.pushNamed(context,'/sua_sodienthoai');
          },),
      ),Container(height: 5 , color: Colors.tealAccent,),
      ListTile(
        leading:const Icon(Icons.transgender, size: 30),
        title:const  Text('Giới Tính'),
        subtitle: Text("Nam"),
        trailing: IconButton( icon:const  Icon(Icons.arrow_forward_ios_outlined ),
          onPressed: (){
            Navigator.pushNamed(context,'/doigioitinh');
          },),
      ),Container(height: 5 , color: Colors.tealAccent,),
      ListTile(
        leading:const Icon(Icons.lock_outline, size: 30),
        title: const Text('Đổi Mật Khẩu'),
        trailing: IconButton( icon:const Icon(Icons.arrow_forward_ios_outlined ),
          onPressed: (){
            Navigator.pushNamed(context,'/doimatkhau');
          },),
      ),
    ],
  );
}




