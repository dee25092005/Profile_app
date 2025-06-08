import 'package:flutter/material.dart';
import 'package:profile_p/screens/profile_screen.dart';
import 'package:provider/provider.dart';
import '../controllers/theme_controller.dart';
import '../controllers/profile_controller.dart';
import '../controllers/app_theme.dart';
import '../controllers/appinitializer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final themeController = ThemeController();
  await themeController.init();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<ThemeController>.value(value: themeController),
        ChangeNotifierProvider(create: (_) => ProfileController()),
      ],
      child: const AppInitializer(
        child: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final themeController = Provider.of<ThemeController>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: themeController.themeMode,
      home: ProfileScreen(),
    );
  }
}
