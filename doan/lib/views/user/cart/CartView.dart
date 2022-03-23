import 'package:doan/models/giohang.dart';
import 'package:doan/models/product.dart';
import 'package:doan/presenters/cart/CartController.dart';
import 'package:doan/presenters/home/http_request.dart';
import 'package:flutter/material.dart';
 class Cart extends StatefulWidget {
   const Cart({Key? key}) : super(key: key);

   @override
   _CartState createState() => _CartState();
 }

 class _CartState extends State<Cart> {

   @override
   Widget build(BuildContext context) {
     final Cart cart;
     return Scaffold(
       appBar: AppBar(
         title: Text("Giỏ Hàng"),
         leading: IconButton(
           onPressed: (){ Navigator.pop(context);},
           icon: const Icon(Icons.arrow_back_outlined),
         ),
       ),
       body: FutureBuilder<List<giohang>>(
         future:fetchCart(),
         builder: (context, snapshot){
           if( snapshot.hasData){
             return ListView.builder(
               itemCount: snapshot.data!.length,
                 itemBuilder: (context, i){
                   return Container(
                     child:
                     Padding(
                       padding: const EdgeInsets.all(10.0),
                       child:Row(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   FutureBuilder<Product>(
                                     future: ApiServices().fetchSingleProduct(snapshot.data![i].masanpham),
                                       builder: (context, snapshot){
                                       if( snapshot.hasData)
                                         {
                                           return Row(
                                             crossAxisAlignment: CrossAxisAlignment.start,
                                             children: [
                                               SizedBox(
                                                 child: Image.network(snapshot.data!.hinhanh),
                                                 width: 150, height: 100,
                                               ) ,
                                               Column(
                                                 crossAxisAlignment: CrossAxisAlignment.start,
                                                 children: [
                                                   Text(snapshot.data!.tensp, style: TextStyle( fontSize: 18),),
                                                   Padding(
                                                     padding: const EdgeInsets.only(right: 20),
                                                     child: Text('Giá : ${ snapshot.data!.giaban.toString()}'),
                                                   ),
                                                   IconButton(onPressed: (){}, icon: Icon(Icons.delete))
                                                 ],

                                               )
                                             ],
                                           );
                                         }
                                         return const CircularProgressIndicator();
                                       }
                                   ),
                                   Text('   Quanity:'+ snapshot.data![i].soluong.toString(), style: TextStyle( fontSize: 14),)
                                 ],
                               ),
                           )
                   );
                 }
             );
           }
           return const Center(
             child: CircularProgressIndicator(),
           );
         },
       )
     );
   }
 }
