import 'package:flutter/material.dart';
import 'package:fusion_music_app/components/listitem.dart';

class ItemList extends StatelessWidget {
  List songs;
  ItemList({Key? key, required this.songs}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: songs.map((e) {
        return ListItem(
            image: e["image"],
            title: e["title"],
            subtitle: e["subtitle"],
            count: e["count"]);
      }).toList(),
    ));
  }
}
