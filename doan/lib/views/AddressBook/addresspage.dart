
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddressPage extends StatefulWidget {
  const AddressPage({Key? key}) : super(key: key);
  @override
  State<AddressPage> createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  @override
  Widget build(BuildContext context){
    return Scaffold(          
      appBar: AppBar(       
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          }
          ),
          title: const Align(
            child: Text(
              'Sổ Địa Chỉ',
              style: TextStyle(
              fontSize: 22,
              ),
            ),
            alignment: Alignment.centerLeft,
          ),                
          backgroundColor: const  Color(0xFF0D47A1),
          foregroundColor: Colors.white,
          automaticallyImplyLeading: false,   
          actions: <Widget> [
            IconButton(
              onPressed: (){}, 
              icon: const Icon(Icons.shopping_cart)
            ),
            IconButton(
              onPressed: (){}, 
              icon: const Icon(Icons.library_add)
            )
          ],
      ),     
      body: SingleChildScrollView(
        child: Column(
          children: [
            address(context),
          ],
        ),
      )     
    );
  }
}

Widget address(BuildContext context){
  return Stack(
    children: <Widget>[
      Container(
      height: 150,
      color: Colors.white,
      ),
      Positioned(
        top: 10,
        left: 10,
        child: Row(
          children: [
            const Text(
              'BÙI KIM THANH',
              style: TextStyle(
                fontSize: 22,
              ),
            ),
            const SizedBox(width: 20,),
            Image.network('https://scontent.fsgn5-5.fna.fbcdn.net/v/t39.30808-6/273541020_310948427716567_1257936523356090812_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=WE5LD2wAC8gAX8b3NXK&tn=SxKQoGphjcOFvEcf&_nc_ht=scontent.fsgn5-5.fna&oh=00_AT8urUK9Wu89Afk-_HMeennLiaCEdpjkDu2kkQpL5_N7BQ&oe=6218D9F9',height: 40,),
            const SizedBox(width: 20,),
            const Text(
              '0829912585',
              style: TextStyle(
                fontSize: 22,
              ),
            ),
          ],
        ),
      ),     
      Positioned(
        top: 60,
        left: 10,        
        child: Row(          
          children: [
            Container(                  
              decoration: BoxDecoration(
                color: Colors.grey.shade400,       
                borderRadius: BorderRadius.circular(20),                
              ),                  
              height: 35,
              width: 60,       
              padding: EdgeInsets.fromLTRB(10, 3, 5, 3),
              child:const  Text(
                'Nhà',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black45,
                ),
              ),
            ),
            const SizedBox(width: 8,),
            Container(
              height: 40,
              width: 320,
              child: const Text(
                '12/119, Liên khu 2-5, Phường Tăng Nhơn'
                'Phú A, Tp Thủ Đức',
                softWrap: true,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black45,
                ),
              ),
            ),           
          ],
        ),
      ),
      Positioned(
        top:120,
        left: 10, 
        child: Row(
          children:<Widget> [
            Icon(Icons.assistant_photo,color: Colors.blue.shade900,),
            const SizedBox(width: 8,),
            Text(
                'Địa chỉ mặc định',
                softWrap: true,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.blue.shade900,
                ),
              ),
          ],
        ),
      ),
      Positioned(
        top:5,
        right: 5,
        child: PopupMenuButton(
        icon: const Icon(Icons.more_vert,size: 40,),
        itemBuilder: (context) => [
          const PopupMenuItem(           
            value: 1,
            child: Text('Xóa',style: TextStyle(fontSize: 20),)
          ),
          const PopupMenuItem(
            value: 2,
            child: Text('Chỉnh sửa',style: TextStyle(fontSize: 20),)
          ),
        ],
      )
      ),
    ],
  );
}