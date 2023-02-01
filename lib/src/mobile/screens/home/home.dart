import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:twitty/src/mobile/components/twitte_item.dart';

class HomeScreen extends HookWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TIMELINE'),
        ),
        body: ListView.builder(
          padding: const EdgeInsets.only(top: 8),
          itemBuilder: (context, index) {
            return const TwitteItem();
          },
        ),
      ),
    );
  }
}
