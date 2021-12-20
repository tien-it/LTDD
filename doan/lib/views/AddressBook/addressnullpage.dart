
import 'package:doan/views/AddressBook/addresspage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddressNullPage extends StatefulWidget {
  const AddressNullPage({Key? key}) : super(key: key);
  @override
  State<AddressNullPage> createState() => _AddressNullPageState();
}

class _AddressNullPageState extends State<AddressNullPage> {
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
            )
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
  padding: EdgeInsets.only(left: 50,right: 50),
  child: Text(
    'Bạn chưa có sổ địa chỉ',
    style: TextStyle(
      fontSize: 25
    ),
  ),
);

Widget buttonadd(BuildContext context){ 
  return Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 20),
                child:  
                  ElevatedButton(
                    onPressed:(){             
                      Navigator.push(        
                        context,           
                        MaterialPageRoute(builder: (context) => const AddressPage()),
                      );
                    }, 
                    child: const Text(
                      'Thêm địa chỉ mới',
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
              );
}