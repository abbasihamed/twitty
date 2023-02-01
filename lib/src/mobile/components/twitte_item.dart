import 'package:flutter/material.dart';
import 'package:twitty/src/config/theme_mediaquery.dart';

class TwitteItem extends StatelessWidget {
  const TwitteItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      padding: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: theme(context).cardColor,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[300]!,
            blurRadius: 5,
            spreadRadius: 1,
            offset: const Offset(0, 0),
          )
        ],
      ),
      child: Column(
        children: [
          const ListTile(
            title: Text('HamedAbbasi'),
            subtitle: Text(
              'Nunc quis justo vel ex rutrum faucibus ut sit amet lorem. Aliquam sollicitudin a mi id consequat. Etiam at lobortis neque, sed vulputate tortor. Nullam imperdiet et mi in fermentum. Vestibulum turpis augue, porttitor id ipsum et, porta vestibulum massa. Vestibulum quis enim eu ante aliquet gravida. Nulla sodales, felis ac venenatis rhoncus, elit augue tincidunt lacus, nec imperdiet eros magna et neque. Vestibulum quis blandit lorem, id sollicitudin mauris. Nunc gravida eu justo nec condimentum. Nam viverra suscipit velit sit amet congue. Fusce eget enim pretium, malesuada eros at, finibus nisl',
            ),
            trailing: Text('8 m ago'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Icon(Icons.repeat),
              Icon(Icons.favorite),
              Icon(Icons.border_color_outlined)
            ],
          ),
        ],
      ),
    );
  }
}
