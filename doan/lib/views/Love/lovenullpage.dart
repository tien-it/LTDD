
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoveNullPage extends StatefulWidget {
  const LoveNullPage({Key? key}) : super(key: key);
  @override
  State<LoveNullPage> createState() => _LoveNullPageState();
}

class _LoveNullPageState extends State<LoveNullPage> {
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
              'Yêu thích',
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

Widget description1 = Padding(
  padding: const EdgeInsets.only(left: 40,right: 30),
  child: Row(
    children: const <Widget>[
      Text(
        'Hãy ',
        style: TextStyle(
          fontSize: 20
        ),
      ),
      Icon(
        Icons.favorite,
        size: 25,
        color: Colors.red,
      ),
      Text(
        ' sản phẩm bạn yêu thích khi',
        style: TextStyle(
          fontSize: 20
        ),
      ),
    ],
  ),
);

Widget description2 = const Padding(
  padding: EdgeInsets.only(left: 20,right: 20),
  child: Text(
    'mua sắm để xem lại thuận tiện nhất',
    style: TextStyle(
      fontSize: 20
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
                      'Tiếp tục mua sắm',
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