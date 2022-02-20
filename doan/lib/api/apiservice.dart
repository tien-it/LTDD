// import 'package:dio/dio.dart';
// import 'package:doan/models/login_model.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// class APIservice{
//   static Future<void> login(String phone,String password) async {
//     Uri url =Uri.parse("https://10.0.2.2:8000/api/login");
//     print(phone + password);
//     var client = http.Client();
//     final response = await client.post(url,body: ({
//       'SODIENTHOAI' : phone,
//       'MATKHAU':password,
//     }));
//     print(response.body);
//     if(response.statusCode == 201|| response.statusCode == 400){
//        throw Exception('success');
      
//     }
//     else{ 
      
//       throw Exception('Falied to load data');
//     }
//   }
// }

// import 'package:doan/models/login_model.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';


// class APIService {
//   Future<LoginResponseModel> login(LoginRequestModel requestModel) async {
//     Uri url = Uri.parse("https://reqres.in/api/login");

//     final response = await http.post(url, body: requestModel.toJson());
//     if (response.statusCode == 200 || response.statusCode == 400) {
//       return LoginResponseModel.fromJson(
//         json.decode(response.body),
//       );
//     } else {
//       throw Exception('Failed to load data!');
//     }
//   }
// }