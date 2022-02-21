
import 'package:doan/resources/configs/config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LovePage extends StatefulWidget {
  const LovePage({Key? key}) : super(key: key);
  @override
  State<LovePage> createState() => _LovePageState();
}

class _LovePageState extends State<LovePage> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Love(context),
          ],
        ),
      ),            
    );
  }
}

Widget Love(BuildContext context){
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
            image: AssetImage(Images.KeSach),
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
      const Positioned(
        right: 20,
        top: 50,
        child: Icon(
          Icons.favorite,
          size: 30,
          color: Colors.red,
        ),
      ),
    ],
  );
}