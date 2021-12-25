import 'package:flutter/material.dart';
class SuaSoDienThoai extends StatefulWidget {
  const SuaSoDienThoai({Key? key}) : super(key: key);

  @override
  _SuaSoDienThoaiState createState() => _SuaSoDienThoaiState();
}
final sodienthoai = TextEditingController();
class _SuaSoDienThoaiState extends State<SuaSoDienThoai> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Số Điện Thoại'),
        ),
        body:
        Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const  Text('Số Điện Thoại', style: TextStyle(fontSize: 20),),
                TextField(
                  decoration:  InputDecoration(
                      hintText: "0327688126",
                      suffixIcon: IconButton(
                        onPressed: (){},
                        icon: const Icon(Icons.cancel ,),
                        splashRadius: 20,
                      )

                  ),
                  controller:sodienthoai,
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

