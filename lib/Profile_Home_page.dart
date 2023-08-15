// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shopping_app/component/sizeedbox.dart';
import 'package:shopping_app/res/colors.dart';
import 'component/Setting_Options/settings_bottoms.dart';

class Profileinfo extends StatefulWidget {
  const Profileinfo({super.key});

  @override
  State<Profileinfo> createState() => _ProfileinfoState();
}

class _ProfileinfoState extends State<Profileinfo> {
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
          Image.asset(
            "images/Ellipse (1).jpg",
            scale: 0.7,
          ),
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
          child: Options_Botton("Orders History")),
      sizedBoxhight(20),
      InkWell(
          onTap: () {
            Navigator.of(context).pushNamed("deliveraddress");
          },
          child: Options_Botton("My address")),
      sizedBoxhight(20),
      InkWell(
        onTap: () {},
        child: Options_Botton("My wallets"),
      ),
      sizedBoxhight(20),
      InkWell(
        onTap: () {
          Navigator.of(context).pushNamed("settingpage");
        },
        child: Options_Botton("Settings"),
      ),
      sizedBoxhight(20),
      InkWell(
        onTap: () {
          Navigator.of(context).pushNamed("chatwithstore");
        },
        child: Options_Botton("Chat With Store"),
      ),
      sizedBoxhight(20),
      InkWell(
        onTap: () {
          Navigator.of(context).pushNamed("aboutstore");
        },
        child: Options_Botton("About Store"),
      ),
      sizedBoxhight(20),
      InkWell(
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                content: Text(
                  'Are you sure you want to Log Out?',
                  style: TextStyle(
                      fontSize: 19, fontWeight: FontWeight.w600, color: GREY_3),
                ),
                actions: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        child: Text(
                          'Yes',
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              color: GREY_3),
                        ),
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      sizedBoxwidth(60),
                      InkWell(
                        child: Text(
                          'Cancel',
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              color: GREY_3),
                        ),
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  )
                ],
              );
            },
          );
        },
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: const EdgeInsets.only(left: 10),
              child: SizedBox(
                  width: 395,
                  height: 44,
                  child: Center(
                      child: Row(
                    children: [
                      InkWell(
                        child: Text(
                          'Logout',
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              color: GREY_3),
                        ),
                      ),
                      sizedBoxwidth(315),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: GREY_3,
                      )
                    ],
                  )))),
          const Divider(
            endIndent: 30,
            thickness: 0.2,
            color: GREY_3,
          )
        ]),
      ),
      sizedBoxhight(20),
    ]));
  }
}
