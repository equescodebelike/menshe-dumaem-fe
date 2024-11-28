import 'dart:async';
import 'package:admin/di/app_dependency.dart';
import 'package:admin/firebase_options.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'di/app.dart';
import 'di/app_components.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FirebaseAnalytics analytics = FirebaseAnalytics.instance;
  analytics.logEvent(name: 'app_launch');
  await AppComponents().init();

  runApp(
    AppDependency(
      app: App(),
    ),
  );
}
