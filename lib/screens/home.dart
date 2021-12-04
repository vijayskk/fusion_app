import 'package:flutter/material.dart';
import 'package:fusion_music_app/components/menuheading.dart';
import 'package:fusion_music_app/components/menulist.dart';
import 'package:fusion_music_app/constants/properties.dart';

class ScreenHome extends StatefulWidget {
  ScreenHome({Key? key}) : super(key: key);

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
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
      child: ListView(
        children: [
          SizedBox(
            height: 20,
          ),
          MenuHeading(text: "POPULAR"),
          MenuList(songs: songs),
          MenuHeading(text: "TRENDING"),
          MenuList(songs: songs),
          MenuHeading(text: "BASED ON YOU"),
          MenuList(songs: songs),
          MenuHeading(text: "CLASSICS"),
          MenuList(songs: songs),
        ],
      ),
    );
  }
}
