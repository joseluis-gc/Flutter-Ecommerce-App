import 'package:flutter_ecommerceapp/repository/repository.dart';

class SliderService {
  Repository _repository;
  SliderService() {
    _repository = Repository();
  }

  getSliders() async {
    return await _repository.httpGet('sliders');
  }
}
