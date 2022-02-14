import 'package:flutter/material.dart';
class SuaTenDangNhap extends StatefulWidget {
  const SuaTenDangNhap({Key? key}) : super(key: key);

  @override
  _SuaTenDangNhapState createState() => _SuaTenDangNhapState();
}
final tendangnhap = TextEditingController();
class _SuaTenDangNhapState extends State<SuaTenDangNhap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Tên Đăng Nhập '),
        ),
        body:
        Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const  Text('Tên Đăng Nhập', style: TextStyle(fontSize: 20),),
                TextField(
                  decoration:  InputDecoration(
                      hintText: "vantien1308",
                      suffixIcon: IconButton(
                        onPressed: (){},
                        icon: const Icon(Icons.cancel ,),
                        splashRadius: 20,
                      )

                  ),
                  controller: tendangnhap,
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
