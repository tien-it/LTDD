import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:doan/models/product.dart';

class ApiServices {

  List<Product> parseProducts(String responseBody) {
    final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
    return parsed.map<Product>((json) => Product.fromJson(json)).toList();
  }

  Future<List<Product>> fetchProduct() async {
    var response = await http.get(Uri.parse("http://10.0.2.2:8000/api/sanpham"));
    print(response.body);
    final int statusCode = response.statusCode;
    if (statusCode != 200 || response.body == null) {
      print(response.reasonPhrase);
      throw new Exception("Lỗi load api");
    }
    return parseProducts(response.body);
  }
}
