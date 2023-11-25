import 'package:flutter/material.dart';
import 'package:flutter_architecture/app/app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CustomSwitchWidget extends StatelessWidget {
  const CustomSwitchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: Modular.get<AppController>().themeSwitch,
        builder: (context, isDark, child) {
          return Switch(
              value: Modular.get<AppController>().isDark,
              onChanged: (value) {
                Modular.get<AppController>()
                    .changeThemeViewModel
                    .changeTheme(value);
              });
        });
  }
}
