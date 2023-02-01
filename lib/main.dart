import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:twitty/src/config/theme/app_theme.dart';
import 'package:twitty/src/config/shared_preference.dart';
import 'package:twitty/src/mobile/components/custom_bottom_navigation_bar.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  await PrefHelper.initPref();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Twitty",
      theme: AppTheme.appTheme,
      home: CustomBottomNavigationBar(),
    );
  }
}
