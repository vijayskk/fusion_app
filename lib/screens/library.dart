import 'package:flutter/material.dart';
import 'package:fusion_music_app/components/itemlist.dart';
import 'package:fusion_music_app/components/menuheading.dart';
import 'package:fusion_music_app/constants/properties.dart';

class ScreenLibrary extends StatelessWidget {
  ScreenLibrary({Key? key}) : super(key: key);

  List songs = [
    {
      "image": imagephdr,
      "title": "Perfect",
      "subtitle": "Ed Shreen",
      "count": 12003
    },
    {
      "image": imagephdr,
      "title": "Perfect",
      "subtitle": "Ed Shreen",
      "count": 12003
    },
    {
      "image": imagephdr,
      "title": "Perfect",
      "subtitle": "Ed Shreen",
      "count": 12003
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            MenuHeading(text: "POPULAR"),
            ItemList(songs: songs),
            MenuHeading(text: "TRENDING"),
            ItemList(songs: songs),
            MenuHeading(text: "BASED ON YOU"),
            ItemList(songs: songs),
            MenuHeading(text: "CLASSICS"),
            ItemList(songs: songs),
          ],
        ),
      ),
    );
  }
}
