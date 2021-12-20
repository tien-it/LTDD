

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BillInfoNullPage extends StatefulWidget {
  const BillInfoNullPage({Key? key}) : super(key: key);
  @override
  State<BillInfoNullPage> createState() => _BillInfoNullPageState();
}

class _BillInfoNullPageState extends State<BillInfoNullPage> {
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
          ],
      ),
      body: Column(
        children:  <Widget> [
          avatar,
          const SizedBox(height: 20,),
          description,
          const SizedBox(height: 30,),
          buttonadd(context),
        ],
      ),            
    );
  }
}
Widget avatar = Padding(
  padding: const EdgeInsets.only(right: 50,left: 50,top: 50,bottom: 20),
  child: Column(
    children: const <Widget> [
      Image(
        image: AssetImage('icons/avatar.png')
      )
    ],
  ),
);

Widget description = const Padding(
  padding: EdgeInsets.only(left: 10,right: 10),
  child: Text(
    'Lưu lại thông tin thanh toán giúp bạn đặt hàng nhanh chống và dễ dàng hơn',
    style: TextStyle(
      fontSize: 23
    ),
  ),
);

Widget buttonadd(BuildContext context){ 
  return Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                child:  
                  ElevatedButton(
                    onPressed:(){             
                      // Navigator.push(        
                      //   context,           
                      //   MaterialPageRoute(builder: (context) => const BillInfoPage()),
                      // );
                    }, 
                    child: const Text(
                      'Thêm thông tin thanh toán mới',
                      style: TextStyle(
                        fontSize: 20,       
                        color: Colors.white,
                      ),
                    ),
                    style: TextButton.styleFrom(                     
                      minimumSize: const Size(390,40),     
                      backgroundColor: Colors.red,                
                    ),                                                                            
                  ),         
              );
}