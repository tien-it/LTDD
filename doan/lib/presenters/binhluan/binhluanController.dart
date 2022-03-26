import 'dart:convert';
import 'package:doan/models/binhluan.dart';
import 'package:doan/resources/configs/config.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class comment {

  Future<void> Create(BuildContext context, String makh, String masp,
      String noidung) async {
    print('Bình Luận input :'+ makh + masp + noidung  );
    var client = http.Client();
    var response =
    await client.post(Uri.parse('http://10.0.2.2:8000/api/binhluan/create'),
        body: ({
          'idBL': '1',
          'MAKHACHHANG': makh,
          'MASANPHAM': masp,
          'NOIDUNG': noidung,
          'TRANGTHAI': '1',
        }));
    print('output bình luận :'+response.body);
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
    print("id binh luan "+ id );
    var client = http.Client();
    var response = await client.get(Uri.parse('http://10.0.2.2:8000/api/binhluan/xoa/$id'));
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
  List<binhluan> parsecomment(String responseBody) {
    final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
    return parsed.map<binhluan>((json) => binhluan.fromJson(json)).toList();
  }
// phương thức fetch
  Future<List<binhluan>> fetchcomment( String id) async {
    if( id ==null){
      throw Error();
    }
    var response = await http.get(Uri.parse("http://10.0.2.2:8000/api/binhluan/show/$id"));
    print(response.body);
    final int statusCode = response.statusCode;
    if (statusCode != 201 || response.body == null) {
      print(response.reasonPhrase);
      throw new Exception("Lỗi load api");
    }
    return parsecomment(response.body);
  }



}