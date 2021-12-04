import 'package:flutter/material.dart';
import 'package:fusion_music_app/constants/properties.dart';

class ListItem extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final int count;
  const ListItem({
    Key? key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.count,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(right: 20.0, top: 20, bottom: 20, left: 20),
      child: Container(
        decoration: BoxDecoration(
            color: Color(grayclr),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                blurRadius: 10,
                spreadRadius: 5,
                color: Colors.grey,
                offset: const Offset(
                  5.0,
                  5.0,
                ),
              )
            ]),
        child: ListTile(
          title: Text(
            title,
            style: TextStyle(fontFamily: normalfont),
          ),
          subtitle: Text(
            subtitle,
            style: TextStyle(fontFamily: normalfont),
          ),
          leading: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
            ),
            clipBehavior: Clip.hardEdge,
            child: Image.network(
              image,
              fit: BoxFit.cover,
              width: 40,
              height: 40,
            ),
          ),
        ),
      ),
    );
  }
}
