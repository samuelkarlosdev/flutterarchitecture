// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/foundation.dart';
import 'package:flutter_architecture/app/modules/home/models/json_placeholder_posts_model.dart';
import 'package:flutter_architecture/app/modules/home/viewmodels/json_placeholder_viewmodel.dart';

class HomeController {
  final JsonPlaceholderViewModel viewModel;

  HomeController(this.viewModel);

  ValueNotifier<List<JsonPlaceholderPostsModel>> get posts =>
      viewModel.jsonPlaceholderPostsModel;

  getPosts() {
    viewModel.fill();
  }
}
