
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SawPage extends StatefulWidget {
  const SawPage({Key? key}) : super(key: key);
  @override
  State<SawPage> createState() => _SawPageState();
}

class _SawPageState extends State<SawPage> {
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            saw(context),
          ],
        ),
      ),            
    );
  }
}

Widget saw(BuildContext context){
  return Stack(
    children:<Widget> [
      Container(
         height: 170,
         color: Colors.white,
      ),
      const Positioned(
        left: 10,
        top: 10,
        child: Padding(
          padding: EdgeInsets.all(2),    
          child: Image(
            image: AssetImage('icons/kesach.jpg'),
            height: 130,
            width: 130,
          ),       
        ),
      ),
      Positioned(
        left: 150,
        top: 10,
        child: Column(
          children: [
            Column(
              children: <Widget>[
                Container(
                  width: 230,
                  height: 50,
                  child: const Text(
                    'Ngăn Trang Trí - Ngăn ' 
                    'Ghép Kệ Sách MOHO ...',                  
                    softWrap: true,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ),
                //const SizedBox(height: 10,),                               
              ],
            ),             
          ],
        ),
      ),   
      Positioned(
        left: 150,
        top: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const <Widget>[
            Icon(Icons.star,size: 20,color: Colors.yellow,),
            Icon(Icons.star,size: 20,color: Colors.yellow,),
            Icon(Icons.star,size: 20,color: Colors.yellow,),
            Icon(Icons.star,size: 20,color: Colors.yellow,),
            Icon(Icons.star,size: 20,color: Colors.grey),
            SizedBox(width: 10,),
            Text(
              '(598)',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
      const Positioned(
        left: 150,
        top: 100,
        child: Text(
         '2,980,000 đ',
         style: TextStyle(
           fontSize: 20, 
         ),
        ),
      ),  
    ],
  );
}