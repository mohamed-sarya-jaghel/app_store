import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/component/maintext_widget.dart';
import 'package:shopping_app/component/sizeedbox.dart';
import 'package:shopping_app/res/colors.dart';

import 'component/sign_widget.dart';

class PhoneVerified extends StatelessWidget {
  const PhoneVerified({super.key});

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
      sizedBoxhight(250),
      Center(
          child: Image.asset(
        "images/phonevirifierd.png",
        scale: 0.9,
      )),
      sizedBoxhight(40),
      Center(child: mainText("Phone Verified", "Configure Successfully")),
      sizedBoxhight(300),
      Padding(
        padding: const EdgeInsets.only(left: 70),
        child: SizedBox(
          width: 305,
          height: 44,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  backgroundColor: PRIMARAY_COLOR),
              onPressed: () {
                Navigator.of(context).pushNamed("phoneverified");
              },
              child: singinWidget("Done")),
        ),
      ),
    ]));
  }
}
