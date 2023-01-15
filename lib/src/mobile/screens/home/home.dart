import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/sliver_persistent_header.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class HomeScreen extends HookWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white70,
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
                  return const SizedBox(
                    width: double.infinity,
                    child: ListTile(
                      title: Text('HamedAbbasi'),
                      subtitle: Text(
                        'Nunc quis justo vel ex rutrum faucibus ut sit amet lorem. Aliquam sollicitudin a mi id consequat. Etiam at lobortis neque, sed vulputate tortor. Nullam imperdiet et mi in fermentum. Vestibulum turpis augue, porttitor id ipsum et, porta vestibulum massa. Vestibulum quis enim eu ante aliquet gravida. Nulla sodales, felis ac venenatis rhoncus, elit augue tincidunt lacus, nec imperdiet eros magna et neque. Vestibulum quis blandit lorem, id sollicitudin mauris. Nunc gravida eu justo nec condimentum. Nam viverra suscipit velit sit amet congue. Fusce eget enim pretium, malesuada eros at, finibus nisl',
                      ),
                      trailing: Text('8 m ago'),
                    ),
                  );
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
                  color: Colors.blue,
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
          child: const Align(
            alignment: Alignment.center,
            child: CircleAvatar(
              maxRadius: 60,
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
