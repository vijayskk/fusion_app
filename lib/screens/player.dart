import 'package:audio_wave/audio_wave.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fusion_music_app/components/menuheading.dart';
import 'package:fusion_music_app/constants/properties.dart';

class ScreenPlayer extends StatelessWidget {
  const ScreenPlayer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Center(child: MenuHeading(text: "NOW PLAYING")),
          SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10,
                    spreadRadius: 10,
                    color: Colors.grey,
                  )
                ]),
            clipBehavior: Clip.hardEdge,
            child: Image.network(
              imagephdr,
              fit: BoxFit.cover,
              width: 250,
              height: 250,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Perfect",
            style: TextStyle(
                fontFamily: normalfont, color: Colors.black87, fontSize: 40),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Ed Shreen",
            style: TextStyle(
                fontFamily: normalfont, color: Colors.black87, fontSize: 20),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 60,
                  width: 60,
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          spreadRadius: 2,
                          color: Colors.grey,
                        )
                      ]),
                  child: SvgPicture.asset(
                    'assets/skip-back.svg',
                    color: Color(themecolor),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 60,
                  width: 60,
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          spreadRadius: 2,
                          color: Colors.grey,
                        )
                      ]),
                  child: SvgPicture.asset(
                    'assets/play.svg',
                    color: Color(themecolor),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 60,
                  width: 60,
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          spreadRadius: 2,
                          color: Colors.grey,
                        )
                      ]),
                  child: SvgPicture.asset(
                    'assets/skip-forward.svg',
                    color: Color(themecolor),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          AudioWave(
            height: 52,
            width: 260,
            spacing: 5,
            alignment: 'center',
            animationLoop: 0,
            beatRate: Duration(milliseconds: 50),
            bars: [
              AudioWaveBar(height: 10, color: Color(themecolor)),
              AudioWaveBar(height: 30, color: Color(themecolor)),
              AudioWaveBar(height: 30, color: Color(themecolor)),
              AudioWaveBar(height: 30, color: Color(themecolor)),
              AudioWaveBar(height: 70, color: Color(themecolor)),
              AudioWaveBar(height: 70, color: Color(themecolor)),
              AudioWaveBar(height: 10, color: Color(themecolor)),
              AudioWaveBar(height: 30, color: Color(themecolor)),
              AudioWaveBar(height: 40, color: Color(themecolor)),
              AudioWaveBar(height: 10, color: Color(themecolor)),
              AudioWaveBar(height: 70, color: Color(themecolor)),
              AudioWaveBar(height: 40, color: Color(themecolor)),
              AudioWaveBar(height: 40, color: Color(themecolor)),
              AudioWaveBar(height: 70, color: Color(themecolor)),
              AudioWaveBar(height: 40, color: Color(themecolor)),
              AudioWaveBar(height: 10, color: Color(themecolor)),
              AudioWaveBar(height: 10, color: Color(themecolor)),
              AudioWaveBar(height: 30, color: Color(themecolor)),
              AudioWaveBar(height: 70, color: Color(themecolor)),
              AudioWaveBar(height: 10, color: Color(themecolor)),
              AudioWaveBar(height: 40, color: Color(themecolor)),
              AudioWaveBar(height: 10, color: Color(themecolor)),
              AudioWaveBar(height: 30, color: Color(themecolor)),
              AudioWaveBar(height: 70, color: Color(themecolor)),
              AudioWaveBar(height: 30, color: Color(themecolor)),
              AudioWaveBar(height: 70, color: Color(themecolor)),
              AudioWaveBar(height: 40, color: Color(themecolor)),
              AudioWaveBar(height: 40, color: Color(themecolor)),
            ],
          ),
        ],
      ),
    );
  }
}
