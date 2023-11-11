import 'package:flutter/material.dart';
import 'package:flutter_architecture/app/app_controller.dart';
import 'package:flutter_architecture/app/pages/home/home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
        valueListenable: AppController.instance.themeSwitch,
        builder: (context, isDark, child) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(
                  seedColor: Colors.deepPurple,
                  brightness: isDark ? Brightness.dark : Brightness.light),
              useMaterial3: true,
            ),
            home: const HomePage(),
          );
        });
  }
}
