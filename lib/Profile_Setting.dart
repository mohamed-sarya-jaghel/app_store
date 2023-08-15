// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shopping_app/component/sizeedbox.dart';
import 'package:shopping_app/res/colors.dart';

import 'component/Setting_Options/settings_bottoms.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: const EdgeInsets.only(top: 25),
        child: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Image.asset("images/arrowback.jpg"),
        ),
      ),
      sizedBoxhight(40),
      Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          setting_botton(
              Icon(
                Icons.face,
                size: 40,
                color: GREY,
              ),
              "My profile"), setting_botton(
                  Icon(
                    Icons.settings,
                    size: 40,
                    color: GREY,
                  ),
                  "General Settings"),
              setting_botton(
                  Icon(
                    Icons.language,
                    size: 40,
                    color: GREY,
                  ),
                  "Language Oprions"),
              setting_botton(
                  Icon(
                    Icons.star,
                    size: 40,
                    color: GREY,
                  ),
                  "Rate Us"),
        ],
      ),
    ]));
  }
}
