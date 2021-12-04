import 'package:flutter/material.dart';
import 'package:fusion_music_app/components/menuitem.dart';

class MenuList extends StatelessWidget {
  const MenuList({
    Key? key,
    required this.songs,
  }) : super(key: key);

  final List songs;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (ctx, index) {
          return MenuItem(
              image: songs[index]["image"],
              title: songs[index]["title"],
              subtitle: songs[index]["subtitle"],
              count: songs[index]["count"]);
        },
        itemCount: songs.length,
      ),
    );
  }
}
