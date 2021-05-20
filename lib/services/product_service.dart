import 'package:flutter_ecommerceapp/repository/repository.dart';

class ProductService {
  Repository _repository;
  ProductService() {
    _repository = Repository();
  }

  getHotProducts() async {
    return await _repository.httpGet('get-all-hot-products');
  }

  getProductsByCategory(category_id) async {
    return await _repository.httpGet('get-products-by-category', category_id);
  }
}
