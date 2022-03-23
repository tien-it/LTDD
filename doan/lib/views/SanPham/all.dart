import 'package:doan/models/product.dart';
import 'package:doan/presenters/home/http_request.dart';
import 'package:doan/resources/configs/config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ALLPRODUCT extends StatefulWidget {
  const ALLPRODUCT({Key? key}) : super(key: key);

  @override
  _ALLPRODUCTState createState() => _ALLPRODUCTState();
}

class _ALLPRODUCTState extends State<ALLPRODUCT> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          title: const Text("Phòng Khách"),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          )),
      body: FutureBuilder<List<Product>>(
          future: ApiServices().fetchProduct(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            return GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, mainAxisSpacing: 5),
                itemCount: snapshot.data!.length,
                itemBuilder: (context, i) {
                  return Container(
                      margin: const EdgeInsets.only(top: 5, left: 5),
                      child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, Routes.singleproduct,
                              arguments: snapshot.data![i]);
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              child: Image.network(
                                snapshot.data![i].hinhanh.toString(),
                                fit: BoxFit.fill,
                              ),
                              width: 150,
                              height: 100,
                            ),
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      snapshot.data![i].tensp.toString(),
                                      style: const TextStyle(fontSize: 16),
                                    ),
                                    Row(
                                      children: [
                                        const Text('Price   \$'),
                                        Text(
                                          snapshot.data![i].giaban.toString(),
                                          style: const TextStyle(
                                              color: Colors.red),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: const [
                                         Text('4.5'),
                                        Icon(Icons.star, color:Colors.yellowAccent,size: 18,),
                                        Text('   Sold '), Text('1234'),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ));
                });
          }),
      ) ;
  }
}
