import 'package:flutter_architecture/app/core/interfaces/client_http_interface.dart';
import 'package:flutter_architecture/app/modules/home/models/json_placeholder_posts_model.dart';
import 'package:flutter_architecture/app/modules/home/repositories/json_placeholder_repository_interface.dart';

class JsonPlaceholderRepository implements IJsonPlaceholder {
  final IClientHttp client;

  JsonPlaceholderRepository(this.client);

  @override
  Future<List<JsonPlaceholderPostsModel>> getPosts() async {
    var json = await client.get("https://jsonplaceholder.typicode.com/posts");
    return json;
  }
}
