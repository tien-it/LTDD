import 'package:dio/dio.dart';
import 'package:doan/models/login_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class APIservice{
  static Future<void> login(String phone,String password) async {
    Uri url =Uri.parse("https://10.0.2.2:8000/api/login");
    print(phone + password);
    var client = http.Client();
    final response = await client.post(url,body: ({
      'SODIENTHOAI' : phone,
      'MATKHAU':password,
    }));
    print(response.body);
    if(response.statusCode == 201|| response.statusCode == 400){
       throw Exception('success');
      
    }
    else{ 
      
      throw Exception('Falied to load data');
    }
  }
}