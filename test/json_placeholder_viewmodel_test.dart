import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_architecture/app/interfaces/client_http_interface.dart';
import 'package:flutter_architecture/app/models/json_placeholder_posts_model.dart';
import 'package:flutter_architecture/app/repositories/json_placeholder_repository.dart';
import 'package:flutter_architecture/app/viewmodels/json_placeholder_viewmodel.dart';
import 'package:test/test.dart';

class ClientHttpMock implements IClientHttp {
  @override
  Future<List<JsonPlaceholderPostsModel>> get(String url) async {
    var value = await rootBundle.loadString('assets/data.json');
    List postJson = jsonDecode(value);
    return postJson.map((e) => JsonPlaceholderPostsModel.fromJson(e)).toList();
  }
}

class ClientHttpErrorMock implements IClientHttp {
  @override
  Future<List<JsonPlaceholderPostsModel>> get(String url) async {
    return [];
  }
}

void main() {
  final viewModel = JsonPlaceholderViewModel(
    JsonPlaceholderRepository(ClientHttpErrorMock()),
  );

  group('JsonPlaceholderViewModel', () {
    WidgetsFlutterBinding.ensureInitialized();
    test('JsonPlaceholderViewModel error', () async {
      await viewModel.fill();
      expect(viewModel.jsonPlaceholderPostsModel.value, []);
    });

    test('JsonPlaceholderViewModel success', () async {
      await viewModel.fill();
      expect(viewModel.jsonPlaceholderPostsModel.value,
          isA<List<JsonPlaceholderPostsModel>>());
    });
  });
}
