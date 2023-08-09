import 'package:flutter/material.dart';
import 'package:shopping_app/component/sizeedbox.dart';
import 'package:shopping_app/res/colors.dart';
import 'component/Setting_Options/settings_bottoms.dart';

class Profileinfo extends StatelessWidget {
  const Profileinfo({super.key});
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
      Center(
          child: Column(
        children: [
          Image.asset("images/picofprfile.jpg"),
          sizedBoxhight(30),
          const Text(
            "Ranim Omar",
            style: TextStyle(
                color: GREY_3, fontSize: 28, fontWeight: FontWeight.w700),
          ),
          const Text(
            "ranem.omarr@gmail.com",
            style: TextStyle(
                color: GREY_3, fontSize: 16, fontWeight: FontWeight.w400),
          )
        ],
      )),
      sizedBoxhight(10),
      InkWell(
          onTap: () {
            Navigator.of(context).pushNamed("orderhistory");
          },
          child: setting_Botton("Orders History")),
      sizedBoxhight(20),
      InkWell(onTap: () {}, child: setting_Botton("My address")),
      sizedBoxhight(20),
      InkWell(
        onTap: () {},
        child: setting_Botton("My wallets"),
      ),
      sizedBoxhight(20),
      InkWell(
        onTap: () {},
        child: setting_Botton("Settings"),
      ),
      sizedBoxhight(20),
      InkWell(
        onTap: () {},
        child: setting_Botton("Chat With Store"),
      ),
      sizedBoxhight(20),
      InkWell(
        onTap: () {},
        child: setting_Botton("About Store"),
      ),
      sizedBoxhight(20),
      InkWell(
        onTap: () {},
        child: setting_Botton("Log out"),
      ),
      sizedBoxhight(20),
    ]));
  }
}
