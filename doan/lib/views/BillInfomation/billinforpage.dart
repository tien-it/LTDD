



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BillInfoPage extends StatefulWidget {
  const BillInfoPage({Key? key}) : super(key: key);
  @override
  State<BillInfoPage> createState() => _BillInfoPageState();
}

class _BillInfoPageState extends State<BillInfoPage> {
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
              'Thông Tin Thanh Toán',
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
      body: Column(
        children:  <Widget> [      
          info(context),    
        ],
      ),            
    );
  }
}
Widget info(BuildContext context){
  return Stack(
    children: <Widget>[
    Container(
      height: 100,
      color: Colors.white,
    ),
    const Positioned(
      top: 10,
      left: 10,
      child: Text(
        'Thanh toán mặc định',
        style: TextStyle(
          fontSize: 20,
        ),
      ),
    ),
    const Positioned(
      top: 50,
      left: 10,
      child: Image(
        image: AssetImage('icons/momo.jpg'),
      ),
    ),
    Positioned(
      top: 60,
      left: 80,
      child: Row(
        children:const <Widget>[
          Icon(
            Icons.circle,
            size: 15,
          ),
          Icon(
            Icons.circle,
            size: 15,
          ),
          Icon(
            Icons.circle,
            size: 15,
          ),
          Icon(
            Icons.circle,
            size: 15,
          ),
          SizedBox(width: 4,),
          Text(
            '2585',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),     
    ),
    Positioned(
      right: 10,
      top: 10,
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
