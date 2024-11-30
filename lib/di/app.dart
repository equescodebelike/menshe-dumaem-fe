import 'package:admin/di/app_components.dart';
import 'package:admin/res/app_theme.dart';
import 'package:admin/screens/dashboard/auth_page.dart';
import 'package:admin/screens/main/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);

  // final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    final prefs = AppComponents().sharedPreferences;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: prefs.getBool('logIn') ?? false ? MainScreen() : AuthScreen(),
      title: "FreedomLens",
      theme: appTheme(),
      darkTheme: appTheme(),
      // routerConfig: _appRouter.config(),
    );
  }
}
