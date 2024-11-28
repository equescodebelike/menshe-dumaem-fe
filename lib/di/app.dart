import 'package:admin/res/app_theme.dart';
import 'package:admin/screens/main/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../navigation/app_router.dart';

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);

  // final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        return MainScreen();
      },
      title: "FreedomLens",
      theme: appTheme(),
      darkTheme: appTheme(),
      // routerConfig: _appRouter.config(),
    );
  }
}
