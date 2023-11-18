// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/foundation.dart';
import 'package:flutter_architecture/app/models/json_placeholder_posts_model.dart';

import 'package:flutter_architecture/app/repositories/json_placeholder_repository_interface.dart';

class JsonPlaceholderViewModel {
  final IJsonPlaceholder repository;

  JsonPlaceholderViewModel(this.repository);

  final ValueNotifier<List<JsonPlaceholderPostsModel>>
      jsonPlaceholderPostsModel = ValueNotifier([]);

  fill() async {
    try {
      jsonPlaceholderPostsModel.value = await repository.getPosts();
    } catch (e) {
      //print(e);
    }
  }
}
