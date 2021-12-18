import 'package:flutter/material.dart';
class DoiGioiTinh extends StatefulWidget {
  const DoiGioiTinh({Key? key}) : super(key: key);

  @override
  _DoiGioiTinhState createState() => _DoiGioiTinhState();
}
enum GioiTinh{ Nam, Nu }

  late GioiTinh gioitinh =GioiTinh.Nam ;

class _DoiGioiTinhState extends State<DoiGioiTinh> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Giới Tính'),
        ),
        body:
        Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const  Text('Giới Tính ', style: TextStyle(fontSize: 20),),

                RadioListTile<GioiTinh>(
                  title: const Text('Nam'),
                    value: GioiTinh.Nam,
                    groupValue: gioitinh,
                    onChanged: (GioiTinh ? value){
                      setState(() {
                        gioitinh=value!;
                      });
                    }),
                RadioListTile<GioiTinh>(
                    title: const Text('Nữ'),
                    value: GioiTinh.Nu,
                    groupValue: gioitinh,
                    onChanged: (GioiTinh ? value){
                      setState(() {
                        gioitinh=value!;
                      });

                    }),
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
