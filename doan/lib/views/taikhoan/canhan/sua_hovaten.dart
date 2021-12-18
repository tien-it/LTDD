import 'dart:ui';

import 'package:flutter/material.dart';
class Sua_HovaTen extends StatefulWidget {
  const Sua_HovaTen({Key? key}) : super(key: key);

  @override
  _Sua_HovaTenState createState() => _Sua_HovaTenState();
}
final hovaten = TextEditingController();
class _Sua_HovaTenState extends State<Sua_HovaTen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Họ và Tên '),
      ),
      body:
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                   const  Text('Họ và Tên', style: TextStyle(fontSize: 20),),
                TextField(
                  decoration:  InputDecoration(
                      hintText: "Đinh Văn Tiến",
                      suffixIcon: IconButton(
                          onPressed: (){},
                          icon: const Icon(Icons.cancel ,),
                        splashRadius: 20,
                      )

                  ),
                  controller: hovaten,
                ),
                ElevatedButton(
                    onPressed: (){
                    },
                    child: Text("Lưu Thay Đổi"),
                  style: TextButton.styleFrom(
                    minimumSize: Size(400,35)
                  ),
                )
              ],
            )
          )
    );
  }
}
