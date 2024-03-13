import 'package:dio/dio.dart';
import 'package:splash/Features/Data/Models/Product_Model.dart';


class ProductService {
  Future<List<Product>> fetchProducts({required String  limit, required String page}) async {
    try {
      final response = await Dio().get(
          'https://slash-backend.onrender.com/product/?limit=$limit&page=$page');

      if (response.statusCode == 200) {
        final List<dynamic> jsonResponse = response.data['data']['products'];
        return jsonResponse.map((json) => Product.fromJson(json)).toList();
      } else {
        throw Exception('Failed to load products: ${response.statusCode}');
      }
    } catch (error) {
      throw Exception('Failed to load products: $error');
    }
  }
}
