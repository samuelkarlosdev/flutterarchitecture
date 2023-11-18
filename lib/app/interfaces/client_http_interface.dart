import 'package:flutter_architecture/app/models/json_placeholder_posts_model.dart';

abstract class IClientHttp {
  Future<List<JsonPlaceholderPostsModel>> get(String url);
}
