import 'dart:convert';
import 'package:dio/dio.dart';
import '../../constants.dart';
import '../model/product.dart';
import '../network/service.dart';
import 'package:http/http.dart' as http;

class ApiRepository {
  List<Product> parseProducts(Response? responseBody) {
    final data = (responseBody!.data).cast<Map<String, dynamic>>();
    return data.map<Product>((json) => Product.fromMap(json)).toList();
  }

  Future<List<Product>> fetchProducts() async {
    final response = await Service().getProducts(
        productsEndPoint,
      baseurl: baseURL
    );
    if (response.status) {
      return parseProducts(response.response);
    } else {
      throw Exception("Unable to fetch products from the REST API");
    }
  }
}


List<Product> parseProducts(String responseBody) {
  final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
  return parsed.map<Product>((json) => Product.fromMap(json)).toList();
}

Future<List<Product>> fetchProducts() async {
  final response = await http.get(Uri.parse('${baseURL}posts'));
  if (response.statusCode == 200) {
    return parseProducts(response.body);
  } else {
    throw Exception('Unable to fetch products from the REST API');
  }
}