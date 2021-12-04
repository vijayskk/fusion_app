import 'package:audio_wave/audio_wave.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fusion_music_app/components/menuheading.dart';
import 'package:fusion_music_app/components/settingstile.dart';
import 'package:fusion_music_app/constants/properties.dart';

class ScreenSettings extends StatelessWidget {
  const ScreenSettings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Center(child: MenuHeading(text: "Settings")),
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
                  'https://schooloflanguages.sa.edu.au/wp-content/uploads/2017/11/placeholder-profile-sq.jpg',
                  fit: BoxFit.cover,
                  width: 200,
                  height: 200,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Vijay Satheesh",
                style: TextStyle(
                    fontFamily: normalfont,
                    color: Colors.black87,
                    fontSize: 30),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "vijayskk",
                style: TextStyle(
                    fontFamily: normalfont,
                    color: Colors.black87,
                    fontSize: 20),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          SettingsTile(
              icon: Icons.account_circle_rounded,
              title: "Manage Account",
              subtitle: "Manage your data"),
          SettingsTile(
              icon: Icons.update,
              title: "Renew Subscriptiont",
              subtitle: "Renew your premium subscription"),
          SettingsTile(
              icon: Icons.equalizer,
              title: "Change Volume Settings",
              subtitle: "Controll volume"),
          SettingsTile(
              icon: Icons.info,
              title: "About the app",
              subtitle: "Manage your data"),
          SettingsTile(
              icon: Icons.exit_to_app,
              title: "Log Out",
              subtitle: "Log out from your account"),
        ],
      ),
    );
  }
}
