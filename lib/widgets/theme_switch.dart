import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../controllers/theme_controller.dart';

class ThemeSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeController = Provider.of<ThemeController>(context);

    return SwitchListTile(
      title: Text('Dark Mode'),
      value: themeController.themeMode == ThemeMode.dark,
      onChanged: (value) => themeController.toggleTheme(value),
    );
  }
}
