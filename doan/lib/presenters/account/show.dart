import 'package:doan/data_sources/dio_request.dart';
import 'package:doan/data_sources/local/local.dart';
import 'package:doan/models/account_model.dart';
import 'package:doan/resources/configs/config.dart';
import 'package:flutter/material.dart';

class Show extends StatefulWidget {
  const Show({Key? key}) : super(key: key);

  @override
  _ShowState createState() => _ShowState();
}
var request =  Dio_Request();
class _ShowState extends State<Show> {
  late final Future<taikhoan> futureListItem;
  @override
  void initState() {
    // TODO: implement initState
    futureListItem =  request.ShowAccount(account_id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<taikhoan>(
          future: futureListItem,
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return ErrorItemWidget();
            }
            if (snapshot.hasData) {
              return SuccessListItemWidget(snapshot.data!);
            }
            return const Center(
                child: CircularProgressIndicator()
            );
          }
      ),
    );
  }
  Widget SuccessListItemWidget(taikhoan data) {
    return ListView(
      children: [
        ListTile(
          leading: const Icon(Icons.person_outline, size: 30,),
          title: const Text('Họ và Tên'),
          subtitle: Text(data.name),
          trailing: IconButton( icon: Icon(Icons.arrow_forward_ios_outlined ),
            onPressed: (){
              Navigator.pushNamed(context, Routes.change_fullname);
            },),
        ),
        Container(height: 5 , color: Colors.tealAccent,),
        ListTile(
          leading: const  Icon(Icons.people_outline, size: 30),
          title: const Text('Tên đăng nhập'),
          subtitle: Text(data.username),
          trailing: IconButton( icon: const Icon(Icons.arrow_forward_ios_outlined ),
            onPressed: (){
              Navigator.pushNamed(context,Routes.change_username);
            },),
        ),
        Container(height: 5 , color: Colors.tealAccent,),
        ListTile(
          leading: const Icon(Icons.event, size: 30),
          title: const Text('Ngày Sinh'),
          subtitle: Text(data.birthday.toString()),
          trailing: IconButton( icon:const Icon(Icons.arrow_forward_ios_outlined ),
            onPressed: (){
              Navigator.pushNamed(context,Routes.change_birthday);
            },),
        ),
        Container(height: 5 , color: Colors.tealAccent,),
        ListTile(
          leading:const Icon(Icons.mail_outline ,size: 30),
          title: const Text('Email'),
          subtitle: Text(data.email),
          trailing: IconButton( icon: const Icon(Icons.arrow_forward_ios_outlined ),
            onPressed: (){
              Navigator.pushNamed(context,Routes.change_email);
            },),
        ),
        Container(height: 5 , color: Colors.tealAccent,),
        ListTile(
          leading:const Icon(Icons.call, size: 30),
          title: const Text('Số Điện Thoại'),
          subtitle: Text(data.phone),
          trailing: IconButton( icon:const  Icon(Icons.arrow_forward_ios_outlined ),
            onPressed: (){
              Navigator.pushNamed(context,Routes.change_phone);
            },),
        ),Container(height: 5 , color: Colors.tealAccent,),
        ListTile(
          leading:const Icon(Icons.transgender, size: 30),
          title:const  Text('Giới Tính'),
          subtitle: Text(data.gender),
          trailing: IconButton( icon:const  Icon(Icons.arrow_forward_ios_outlined ),
            onPressed: (){
              Navigator.pushNamed(context,Routes.change_gender);
            },),
        ),Container(height: 5 , color: Colors.tealAccent,),
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

  Widget ErrorItemWidget() {
    return const Center(
      child:  Padding(
        padding: EdgeInsets.all(20.0),
        child: Text(" Not Found " ,
          style: TextStyle(color: Colors.black , fontSize: 30)),
      ),
    );
  }

}
