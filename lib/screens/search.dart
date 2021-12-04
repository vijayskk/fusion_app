import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fusion_music_app/components/listitem.dart';
import 'package:fusion_music_app/components/menuheading.dart';
import 'package:fusion_music_app/constants/properties.dart';

class ScreenSearch extends StatelessWidget {
  ScreenSearch({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

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
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          MenuHeading(text: "Search"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: CupertinoSearchTextField(),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Container(
              child: ListView.builder(
                itemBuilder: (ctx, index) {
                  return ListItem(
                      image: songs[index]["image"],
                      title: songs[index]["title"],
                      subtitle: songs[index]["subtitle"],
                      count: songs[index]["count"]);
                },
                itemCount: songs.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
