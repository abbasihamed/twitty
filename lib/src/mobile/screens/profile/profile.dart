import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:twitty/src/config/theme_mediaquery.dart';
import 'package:twitty/src/mobile/components/twitte_item.dart';

class ProfileScreen extends HookWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverPersistentHeader(
              delegate: MySliverAppBar(),
              pinned: true,
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                childCount: 10,
                (_, index) {
                  return const TwitteItem();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MySliverAppBar extends SliverPersistentHeaderDelegate {
  MySliverAppBar();

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      fit: StackFit.expand,
      children: [
        if (shrinkOffset <= 200)
          Column(
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.bottomCenter,
                  color: theme(context).primaryColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Text('Followers'),
                      Text('Following'),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    SizedBox(height: 20),
                    Text('_HamedAbbasi'),
                    Text('اخراجی ها'),
                  ],
                ),
              ),
            ],
          ),
        Opacity(
          opacity: 1 - shrinkOffset / 300,
          child: Align(
            alignment: Alignment.center,
            child: ClipOval(
              child: SizedBox.fromSize(
                size: const Size.fromRadius(64), // Image radius
                child: Image.asset(
                  'assets/images/avatar.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        if (shrinkOffset > 200)
          Opacity(
            opacity: shrinkOffset / 300,
            child: AppBar(
              title: const Text('_HamedAbbasi'),
            ),
          ),
      ],
    );
  }

  @override
  double get maxExtent => 300;

  @override
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
