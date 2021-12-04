import 'package:flutter/material.dart';
import 'package:fusion_music_app/constants/properties.dart';

class SettingsTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  const SettingsTile({
    Key? key,
    required this.icon,
    required this.title,
    required this.subtitle,
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
          leading: Icon(icon),
        ),
      ),
    );
  }
}
