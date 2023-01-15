import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:twitty/src/logic/get_index.dart';
import 'package:twitty/src/mobile/screens/home/home.dart';
import 'package:twitty/src/mobile/screens/likes/likes.dart';
import 'package:twitty/src/mobile/screens/week_history/history.dart';

class CustomBottomNavigationBar extends HookWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    final current = useState(0);
    return Scaffold(
      body: _getScreen(current.value),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          current.value = value;
        },
        currentIndex: current.value,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'History',
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
        const HomeScreen(),
        const WeekHistoryScreen(),
        const LikesScreen(),
      ].getCurrent(index);
}
