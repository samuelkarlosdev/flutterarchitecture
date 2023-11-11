import 'package:flutter/material.dart';
import 'package:flutter_architecture/app/controllers/app_controller.dart';

class CustomSwitchWidget extends StatelessWidget {
  const CustomSwitchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: AppController.instance.themeSwitch,
        builder: (context, isDark, child) {
          return Switch(
              value: AppController.instance.themeSwitch.value,
              onChanged: (value) {
                AppController.instance.changeTheme(value);
              });
        });
  }
}
