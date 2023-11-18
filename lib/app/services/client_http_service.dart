import 'package:dio/dio.dart';
import 'package:flutter_architecture/app/interfaces/client_http_interface.dart';
import 'package:flutter_architecture/app/models/json_placeholder_posts_model.dart';

class ClientHttpService implements IClientHttp {
  final Dio dio = Dio();

  @override
  Future<List<JsonPlaceholderPostsModel>> get(String url) async {
    var response = await dio.get(url);
    return (response.data as List)
        .map((e) => JsonPlaceholderPostsModel.fromJson(e))
        .toList();
  }
}
