import 'package:flutter_architecture/app/models/json_placeholder_posts_model.dart';

abstract class IJsonPlaceholder {
  Future<List<JsonPlaceholderPostsModel>> getPosts();
}
