import 'package:flutter/material.dart';

class Detail_invoice extends StatefulWidget {
  const Detail_invoice({Key? key}) : super(key: key);

  @override
  _Detail_invoiceState createState() => _Detail_invoiceState();
}

class _Detail_invoiceState extends State<Detail_invoice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Invoice Details '),
        ),
        body:
        Padding(
            padding: EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const  Text('MÃ HD', style: TextStyle(fontSize: 20),),
                TextField(
                  decoration:  InputDecoration(
                    hintText: "HD01",
                  ),
                ),
                const  Text('Khách Hàng', style: TextStyle(fontSize: 20),),
                TextField(
                  decoration:  InputDecoration(
                      hintText: "Đinh Văn Tiến",
                  ),
                ),
                const  Text('Sản Phẩm', style: TextStyle(fontSize: 20),),
                TextField(
                  decoration:  InputDecoration(
                    hintText: "Sản phẩm 01",
                  ),
                ),
                const  Text('Số Lượng', style: TextStyle(fontSize: 20),),
                TextField(
                  decoration:  InputDecoration(
                    hintText: "1",
                  ),
                ),
                const  Text('Đơn Gia', style: TextStyle(fontSize: 20),),
                TextField(
                  decoration:  InputDecoration(
                    hintText: "10000000",
                  ),
                ),
                const  Text('Thời Gian', style: TextStyle(fontSize: 20),),
                TextField(
                  decoration:  InputDecoration(
                    hintText: "16/12/2022",
                  ),
                ),
                const  Text('Thành Tiền', style: TextStyle(fontSize: 20),),
                TextField(
                  decoration:  InputDecoration(
                    hintText: "10000000",
                  ),
                ),
                const  Text('Trạng Thái', style: TextStyle(fontSize: 20),),
                TextField(
                  decoration:  InputDecoration(
                    hintText: "Đã giao",
                  ),
                ),



              ],
            )
        )
    );
  }
}
