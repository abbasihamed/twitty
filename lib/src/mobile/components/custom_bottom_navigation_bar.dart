import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:twitty/src/config/get_index.dart';
import 'package:twitty/src/mobile/screens/home/home.dart';
import 'package:twitty/src/mobile/screens/profile/profile.dart';
import 'package:twitty/src/mobile/screens/likes/likes.dart';

class CustomBottomNavigationBar extends HookWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    final current = useState(1);
    return Scaffold(
      body: _getScreen(current.value),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          current.value = value;
        },
        currentIndex: current.value,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Likes',
          ),
        ],
      ),
    );
  }

  Widget _getScreen(int index) => <Widget>[
        const ProfileScreen(),
        const HomeScreen(),
        const LikesScreen(),
      ].getCurrent(index);
}
