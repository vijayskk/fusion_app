import 'package:flutter/material.dart';
import 'package:fusion_music_app/constants/properties.dart';

class MenuHeading extends StatelessWidget {
  final String text;
  bool center;
  MenuHeading({Key? key, required this.text, this.center = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 20),
      child: Text(
        text,
        textAlign: center ? TextAlign.center : TextAlign.start,
        style: TextStyle(
            fontFamily: normalfont, color: Color(themecolor), fontSize: 25),
      ),
    );
  }
}
