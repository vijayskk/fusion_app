import 'package:flutter/material.dart';
import 'package:fusion_music_app/constants/properties.dart';

class MenuItem extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final int count;
  const MenuItem({
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
        height: 200,
        width: 150,
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
              ),
              clipBehavior: Clip.hardEdge,
              child: Image.network(
                image,
                fit: BoxFit.cover,
                width: 80,
                height: 80,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: TextStyle(
                  fontFamily: normalfont,
                  color: Color(themecolor),
                  fontSize: 20),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              subtitle,
              style: TextStyle(
                  fontFamily: normalfont,
                  color: Color(themecolor),
                  fontSize: 10),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "$count Plays",
              style: TextStyle(
                  fontFamily: normalfont,
                  color: Color(themecolor),
                  fontSize: 10),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
