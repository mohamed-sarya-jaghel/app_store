// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:shopping_app/res/colors.dart';

import 'component/sizeedbox.dart';

class AboutStore extends StatelessWidget {
  const AboutStore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Row(children: [
            InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Image.asset("images/arrowback.jpg"),
            ),
            sizedBoxwidth(100),
            const Text(
              "Mari Bosa",
              style: TextStyle(
                  color: PRIMARAY_COLOR,
                  fontSize: 28,
                  fontWeight: FontWeight.w700),
            )
          ])),
      sizedBoxhight(80),
      const Padding(
        padding: EdgeInsets.all(20),
        child: Text(
          "Mari Bosa is part of the Global Fashion Group, the world's leading fashion group. Founded in 2020 and dedicated to creating online fashion companies in developing countries. To date, Global Fashion Group operates in 27 countries. Global Fashion Group has a presence in Indonesia, South East, South America and Europe. Through MARI BOSA, Global Fashion Group is able to access markets in Southeast Asia, while MARI BOSA is trying to become a fashion destination in Southeast Asia.",
          style: TextStyle(
              color: BLACK, fontSize: 12, fontWeight: FontWeight.w500),
        ),
      )
    ]));
  }
}
