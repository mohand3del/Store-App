import 'dart:convert';
import 'package:store_app/helper/api.dart';
import 'package:store_app/models/product_model.dart';
import 'package:http/http.dart' as http;

class GetAllCategories {
  Future<List<dynamic>> getAllCategories() async {
    http.Response response =
        await Api().get(url: 'https://fakestoreapi.com/products/categories');

    
      List<dynamic> data = jsonDecode(response.body);
      return data;
    
  }
}
