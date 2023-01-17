import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:twitty/src/core/shared_preference.dart';
import 'package:twitty/src/mobile/components/custom_bottom_navigation_bar.dart';
import 'package:twitty/src/mobile/screens/auth/twitter_auth.dart';

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
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Twitty",
      home: TwitterAuth(),
    );
  }
}
