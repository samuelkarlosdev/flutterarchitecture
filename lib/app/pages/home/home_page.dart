import 'package:flutter/material.dart';
import 'package:flutter_architecture/app/models/json_placeholder_posts_model.dart';
import 'package:flutter_architecture/app/pages/home/components/custom_switch_widget.dart';
import 'package:flutter_architecture/app/pages/home/home_controller.dart';
import 'package:flutter_architecture/app/repositories/json_placeholder_repository.dart';
import 'package:flutter_architecture/app/services/client_http_service.dart';
import 'package:flutter_architecture/app/viewmodels/json_placeholder_viewmodel.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController(
    JsonPlaceholderViewModel(
      JsonPlaceholderRepository(
        ClientHttpService(),
      ),
    ),
  );

  @override
  void initState() {
    super.initState();
    controller.getPosts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              const CustomSwitchWidget(),
              ValueListenableBuilder<List<JsonPlaceholderPostsModel>>(
                valueListenable: controller.posts,
                builder: (_, list, __) {
                  if (list.isEmpty) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  return ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: list.length,
                    itemBuilder: (_, index) => ListTile(
                      leading: Text(list[index].id.toString()),
                      title: Text(list[index].title),
                    ),
                    separatorBuilder: (_, __) => const Divider(),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
