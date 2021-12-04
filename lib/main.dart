// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fusion_music_app/constants/properties.dart';
import 'package:fusion_music_app/screens/home.dart';
import 'package:fusion_music_app/screens/library.dart';
import 'package:fusion_music_app/screens/player.dart';
import 'package:fusion_music_app/screens/search.dart';
import 'package:fusion_music_app/screens/settings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedindex,
            onTap: (i) {
              setState(() {
                selectedindex = i;
              });
            },
            elevation: 0,
            selectedLabelStyle: TextStyle(color: Color(themecolor)),
            items: [
              BottomNavigationBarItem(
                  label: "Home",
                  icon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset(
                      'assets/home.svg',
                      width: 30,
                      height: 30,
                      color: Color(themecolor),
                    ),
                  )),
              BottomNavigationBarItem(
                  label: "Search",
                  icon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset(
                      'assets/search.svg',
                      width: 30,
                      height: 30,
                      color: Color(themecolor),
                    ),
                  )),
              BottomNavigationBarItem(
                  label: "Player",
                  icon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset(
                      'assets/music.svg',
                      width: 30,
                      height: 30,
                      color: Color(themecolor),
                    ),
                  )),
              BottomNavigationBarItem(
                  label: "Library",
                  icon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset(
                      'assets/book-open.svg',
                      width: 30,
                      height: 30,
                      color: Color(themecolor),
                    ),
                  )),
              BottomNavigationBarItem(
                  label: "Settings",
                  icon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset(
                      'assets/settings.svg',
                      width: 30,
                      height: 30,
                      color: Color(themecolor),
                    ),
                  )),
            ],
          ),
          body: (selectedindex == 0)
              ? ScreenHome()
              : (selectedindex == 1)
                  ? ScreenSearch()
                  : (selectedindex == 2)
                      ? ScreenPlayer()
                      : (selectedindex == 3)
                          ? ScreenLibrary()
                          : ScreenSettings()),
    );
  }
}
