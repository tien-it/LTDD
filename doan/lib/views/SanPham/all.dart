import 'package:doan/models/product.dart';
import 'package:doan/presenters/home/http_request.dart';
import 'package:doan/resources/configs/config.dart';
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
        body: FutureBuilder<List<Product>>(
            future: ApiServices().fetchProduct(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              return ListView.builder(
                  itemCount: snapshot.data?.length,
                  itemBuilder: (context, i) {
                    return Container(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  child: Image.network(
                                      snapshot.data![i].hinhanh.toString()),
                                  width: 150,
                                  height: 100,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      snapshot.data![i].tensp.toString(),
                                      style: const  TextStyle(fontSize: 20),
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(right: 20),
                                          child:
                                          Text(snapshot.data![i].giaban
                                              .toString()),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        TextButton(
                                          onPressed: () {
                                            Navigator.pushNamed(
                                                context, Routes.singleproduct, arguments: snapshot.data![i]);
                                          },
                                          child:const  Text("Chi tiết",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w600)),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  });
            }),
      ) ;
  }
}
