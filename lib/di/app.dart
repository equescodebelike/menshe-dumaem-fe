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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
      title: "FreedomLens",
      theme: appTheme(),
      darkTheme: appTheme(),
      // routerConfig: _appRouter.config(),
    );
  }
}
