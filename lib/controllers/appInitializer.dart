import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../controllers/theme_controller.dart';

class AppInitializer extends StatelessWidget {
  final Widget child;

  const AppInitializer({Key? key, required this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final themeController = Provider.of<ThemeController>(context);

    // Prevent building the app before the theme is initialized
    if (themeController.themeMode == " ") {
      return const MaterialApp(
        home: Scaffold(
          body: Center(child: CircularProgressIndicator()),
        ),
      );
    }

    return child;
  }
}
