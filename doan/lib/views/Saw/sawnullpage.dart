
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SawNullPage extends StatefulWidget {
  const SawNullPage({Key? key}) : super(key: key);
  @override
  State<SawNullPage> createState() => _SawNullPageState();
}

class _SawNullPageState extends State<SawNullPage> {
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
              'Đã xem',
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
          description1,
          description2,
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

Widget description1 = const Padding(
  padding: EdgeInsets.only(left: 50,right: 50),
  child: Text(
    'Khám phá các mặt hàng',
    style: TextStyle(
      fontSize: 25
    ),
  ),
);

Widget description2 = const Padding(
  padding: EdgeInsets.only(left: 50,right: 50),
  child: Text(
    'hấp dẫn nhất ngay nào',
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
                    }, 
                    child: const Text(
                      'Khám phá ngay',
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