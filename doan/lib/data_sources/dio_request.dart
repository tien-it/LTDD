import 'package:dio/dio.dart';
import 'dart:convert';

import 'package:doan/models/account_model.dart';

class Dio_Request {
  late final String url;

  static String url_account = 'http://10.0.2.2:8000/api/account';

  final dio = Dio();

   Future<taikhoan> ShowAccount(int id) async {
    final response = await dio.get<String>(url_account + "/$id");
    if (response.statusCode == 200) {
      print("Not Found  \n ${response.statusCode} ");
    }
    var account = await taikhoan.fromJson(jsonDecode(response.data!));
    return account;
  }
}
