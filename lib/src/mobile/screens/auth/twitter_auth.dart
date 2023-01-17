import 'package:flutter/material.dart';
import 'package:twitty/src/core/shared_preference.dart';
import 'package:twitty/src/logic/sign_in_controller.dart';

class TwitterAuth extends StatelessWidget {
  const TwitterAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('SignIn'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                """
To use the features of this application
Log in to your Twitter account
""",
                textAlign: TextAlign.center,
              ),
              ElevatedButton.icon(
                onPressed: () {
                  SignInController().login();
                },
                icon: Image.asset(
                  'assets/icons/twitter.png',
                  scale: 1.5,
                  color: Colors.white,
                ),
                label: const Text('SignIn'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
