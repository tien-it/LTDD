
import 'package:doan/resources/configs/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
class DonHang extends StatefulWidget {
  const DonHang({Key? key}) : super(key: key);

  @override
  _DonHangState createState() => _DonHangState();
}

class _DonHangState extends State<DonHang> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        appBar: AppBar(
          title: const  Text('Đơn Hàng Của Tôi'),
          bottom: const TabBar(
            isScrollable: true,
            tabs: [
              Tab(
                text: "Tất Cả",
              ),
              Tab(
                text: "Chờ Thanh Toán",
              ),
              Tab(
                text: "Đang Xử Lý",
              ),
              Tab(
                text: "Đang Giao",
              ),
              Tab(
                text: "Giao Thành Công",
              ),
              Tab(
                text: "Đã hủy",
              ),
              Tab(
                text: " Đánh Giá",
              ),

            ],
          ),
        ),
        body: getbody(context),
      ),
    );
  }
}

getbody( BuildContext context) {
  return TabBarView(
      children :[
        tatca(context),
        thanhtoan(context),
        dangxuly(context),
        danggiao(context),
        dagiao(context),
        dahuy(context),
        danhgia(context),
      ]
  ) ;

}

tatca(BuildContext context) {
  return ListView(
    children: [
      itemchodanhgia(context),
      itemdadanhgia(context),
      itemthanhtoan(context),
      itemdanggiao(context),
      itemdanggiao(context),
      itemdagiao(context),
      itemdagiao(context),
      itemdahuy(context),
      itemdahuy(context)

    ],
  );
}

thanhtoan(BuildContext context) {
  return ListView(
    children: [
      itemthanhtoan(context)
    ],
  );
}
dangxuly(BuildContext context) {
  return ListView(
    children: [
     itemdangxuly(context)
    ],
  );
}
danggiao(BuildContext context) {
  return ListView(
    children: [
      itemdanggiao(context),

    ],
  );
}
dagiao(BuildContext context) {
  return ListView(
    children: [
      itemdagiao(context),
    ],
  );
}
dahuy(BuildContext context) {
  return ListView(
    children: [
     itemdahuy(context),
    ],
  );
}
danhgia(BuildContext context) {
  return ListView(
    children: [
      itemchodanhgia(context),
    ],
  );
}

Widget itemdanggiao(BuildContext context){
  return Container(
    child:
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [Text('Đang giao', style: TextStyle(color: Colors.lightBlue),)],
          ),
          Row(
            children: [
              SizedBox(
                  child: Image.network("https://salt.tikicdn.com/cache/w1200/ts/product/d2/85/84/48836d558dfa7d5d11f167d8453704db.png"),
                width: 150, height: 100,
              ) ,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                     'Sản phẩm 01' ,style:  TextStyle(fontSize: 20) ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Text('Giá : 10.000.000'),
                      ),
                      Column(
                        children: [
                          Text('Số Lượng : 1'),
                          TextButton( onPressed: () { Navigator.pushNamed(context, Routes.detail_invoice); } , child:Text("Detail"))
                        ],
                      ) ,

                    ],
                  ),

                ],
              ),

            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('Tổng Cộng: 0đ', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
              ],
            ),
          )
        ],
      ),
    ),
  );
}

Widget itemdagiao(BuildContext context){
  return Container(
    child:
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [ const Text('Giao Hàng Thành Công', style: TextStyle(color: Colors.lightBlue),)],
          ),
          Row(
            children: [
              SizedBox(
                child: Image.network("https://salt.tikicdn.com/cache/w1200/ts/product/d2/85/84/48836d558dfa7d5d11f167d8453704db.png"),
                width: 150, height: 100,
              ) ,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Sản phẩm 09', style:  TextStyle(fontSize: 20),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Text('Giá : 10.000.000'),
                      ),
                      Text('Số Lượng : 1')
                    ],
                  ),
                  Row(
                    children: [
                      Text('Tổng Cộng: 0đ', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
                    ],),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextButton(onPressed: (){}, child: Text("Mua lại")),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextButton(onPressed: (){}, child: Text("Chi Tiết  ")),
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
}

Widget itemdahuy(BuildContext context){
  return Container(
    child:
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [ const Text('Đã Hủy', style: TextStyle(color: Colors.lightBlue),)],
          ),
          Row(
            children: [
              SizedBox(
                child: Image.network("https://salt.tikicdn.com/cache/w1200/ts/product/d2/85/84/48836d558dfa7d5d11f167d8453704db.png"),
                width: 150, height: 100,
              ) ,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Sản phẩm 07', style:  TextStyle(fontSize: 20),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Text('Giá : 10.000.000'),
                      ),
                      Text('Số Lượng : 1')
                    ],
                  ),
                  Row(
                    children: [
                      Text('Tổng Cộng: 0đ', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
                    ],),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextButton(onPressed: (){}, child: Text("Mua lại")),
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
}
Widget itemdangxuly(BuildContext context){
  return Container(
    child:
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [

          Row(
            children: [
              SizedBox(
                child: Image.network("https://salt.tikicdn.com/cache/w1200/ts/product/d2/85/84/48836d558dfa7d5d11f167d8453704db.png"),
                width: 150, height: 100,
              ) ,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Sản phẩm 06', style:  TextStyle(fontSize: 20),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Text('Giá : 10.000.000'),
                      ),
                      Text('Số Lượng : 1')
                    ],
                  ),
                  Row(
                    children: [
                      Text('Tổng Cộng: 0đ', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
                    ],),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextButton(onPressed: (){}, child: Text(" Hủy ") ),
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
}

Widget itemchodanhgia(BuildContext context){
  return Container(
    child:
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [ const Text('Giao Hàng Thành Công', style: TextStyle(color: Colors.lightBlue),)],
          ),
          Row(
            children: [
              SizedBox(
                child: Image.network("https://salt.tikicdn.com/cache/w1200/ts/product/d2/85/84/48836d558dfa7d5d11f167d8453704db.png"),
                width: 150, height: 100,
              ) ,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Sản phâm 05', style:  TextStyle(fontSize: 20),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Text('Giá : 10.000.000'),
                      ),
                      Text('Số Lượng : 1')
                    ],
                  ),
                  Row(
                    children: [
                      Text('Tổng Cộng: 0đ', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
                    ],),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextButton(onPressed: (){}, child: Text("Mua lại")),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextButton(onPressed: (){}, child: Text("Đánh Giá ")),
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
}
Widget itemdadanhgia(BuildContext context){
  return Container(
    child:
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [ const Text('Giao Hàng Thành Công', style: TextStyle(color: Colors.lightBlue),)],
          ),
          Row(
            children: [
              SizedBox(
                child: Image.network("https://salt.tikicdn.com/cache/w1200/ts/product/d2/85/84/48836d558dfa7d5d11f167d8453704db.png"),
                width: 150, height: 100,
              ) ,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('sản phẩm 03', style:  TextStyle(fontSize: 20),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Text('Giá : 10.000.000'),
                      ),
                      Text('Số Lượng : 1')
                    ],
                  ),
                  Row(
                    children: [
                      Text('Tổng Cộng: 0đ', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
                    ],),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextButton(onPressed: (){}, child: Text("Mua lại")),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextButton(onPressed: (){}, child: Text("Sửa Đánh Giá ")),
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
}
Widget itemthanhtoan(BuildContext context){
  return Container(
    child:
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [

          Row(
            children: [
              SizedBox(
                child: Image.network("https://salt.tikicdn.com/cache/w1200/ts/product/d2/85/84/48836d558dfa7d5d11f167d8453704db.png"),
                width: 150, height: 100,
              ) ,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Sản phẩm 02', style:  TextStyle(fontSize: 20),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Text('Giá : 10.000.000'),
                      ),
                      Text('Số Lượng : 1')
                    ],
                  ),
                  Row(
                    children: [
                      Text('Tổng Cộng: 0đ', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
                    ],),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextButton(onPressed: (){}, child: Text(" Thanh Toán ") ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextButton(onPressed: (){}, child: Text(" Chỉnh Sửa ") ),
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
}