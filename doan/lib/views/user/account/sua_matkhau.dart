import 'package:flutter/material.dart';
class DoiMatKhau extends StatefulWidget {
  const DoiMatKhau({Key? key}) : super(key: key);

  @override
  _DoiMatKhauState createState() => _DoiMatKhauState();
}

class _DoiMatKhauState extends State<DoiMatKhau> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Mật Khẩu '),
        ),
        body:
        Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const  Text('Mật Khẩu Cũ', style: TextStyle(fontSize: 20),),
                TextField(
                  decoration:  InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: (){},
                        icon: const Icon(Icons.cancel ,),
                        splashRadius: 20,
                      )

                  ),
                ),
                SizedBox(height: 20,),
                const  Text('Mật Khẩu Mới', style: TextStyle(fontSize: 20),),
                TextField(
                  decoration:  InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: (){},
                        icon: const Icon(Icons.cancel ,),
                        splashRadius: 20,
                      )

                  ),
                ),
                
              TextButton(
                     child: Text('Quên mật khẩu'),
                   onPressed: (){},
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
