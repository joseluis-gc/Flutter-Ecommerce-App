import 'package:http/http.dart' as http;

class Repository {
  String _baseUrl = 'http://192.168.7.217:8000/api';

  httpGet(String api) async {
    return await http.get(_baseUrl + "/" + api);
  }

  httpGetById(String api, category_id) async {
    return await http.get(_baseUrl + "/" + api + "/" + category_id.toString());
  }
}

//para correr api en laravel development php artisan serve --host 0.0.0.0
