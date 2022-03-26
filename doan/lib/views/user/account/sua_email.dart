import 'package:doan/data_sources/local/local.dart';
import 'package:flutter/material.dart';
class SuaEmail extends StatefulWidget {
  const SuaEmail({Key? key}) : super(key: key);

  @override
  _SuaEmailState createState() => _SuaEmailState();
}
final email =   TextEditingController();
class _SuaEmailState extends State<SuaEmail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Email '),
        ),
        body:
        Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const  Text('Email', style: TextStyle(fontSize: 20),),
                TextField(
                  decoration:  InputDecoration(
                      hintText: myuser.email,
                      suffixIcon: IconButton(
                        onPressed: (){},
                        icon: const Icon(Icons.cancel ,),
                        splashRadius: 20,
                      )

                  ),
                  controller: email,
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
