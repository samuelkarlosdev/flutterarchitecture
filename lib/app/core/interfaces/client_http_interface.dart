import 'package:flutter_architecture/app/modules/home/models/json_placeholder_posts_model.dart';

abstract class IClientHttp {
  Future<List<JsonPlaceholderPostsModel>> get(String url);
}
