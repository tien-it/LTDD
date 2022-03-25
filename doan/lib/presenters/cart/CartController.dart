import 'dart:convert';

import 'package:doan/data_sources/local/local.dart';
import 'package:doan/models/giohang.dart';
import 'package:doan/resources/configs/routes.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

  Future<void> Create(BuildContext context, String makh, String mactsp,
      String soluong, String gia) async {
    print(makh + mactsp + soluong.toString() + gia.toString() );
    var client = http.Client();
    var response =
    await client.post(Uri.parse('http://10.0.2.2:8000/api/giohang/add'),
        body: ({
          'idGH': '1',
          'MAKHACHHANG': makh,
          'MACHITIETSANPHAM': mactsp,
          'SOLUONG': soluong,
          'GIA': gia,
        }));
    print(response.body);
    if (response.statusCode == 201) {
      ScaffoldMessenger.of(context)
        ..removeCurrentSnackBar()
        ..showSnackBar(
          const SnackBar(
            content: Text('Thêm thành công'),
          ),
        );
      Navigator.pushNamed(
          context, Routes.singleproduct);
    }
    else {
      ScaffoldMessenger.of(context)
        ..removeCurrentSnackBar()
        ..showSnackBar(
          const SnackBar(
            content: Text('Thêm Không Thành Công'),
          ),
        );
    }
  }
Future<void> Delete(BuildContext context, String id) async {
  print("id cart "+ id );
  var client = http.Client();
  var response = await client.get(Uri.parse('http://10.0.2.2:8000/api/giohang/xoa/$id'));
  print(response.body);
  if (response.statusCode == 201) {
    ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(
        const SnackBar(
          content: Text('xoa thành công'),
        ),
      );
    Navigator.pushNamed(
        context, Routes.cart);
  }
  else {
    ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(
        const SnackBar(
          content: Text('Xoa Không Thành Công'),
        ),
      );
  }
}
// cast giỏ hàng thành list
  List<giohang> parseCart(String responseBody) {
    final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
    return parsed.map<giohang>((json) => giohang.fromJson(json)).toList();
  }
// phương thức fetch
  Future<List<giohang>> fetchCart() async {
    var iduser = myuser.phone;

    if( iduser ==null){
      throw Error();
    }
    var response = await http.get(Uri.parse("http://10.0.2.2:8000/api/giohang/$iduser"));
    print(response.body);
    final int statusCode = response.statusCode;
    if (statusCode != 200 || response.body == null) {
      print(response.reasonPhrase);
      throw new Exception("Lỗi load api");
    }
    return parseCart(response.body);
  }
