import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/component/numbers_widget.dart';
import 'package:shopping_app/res/colors.dart';

import 'component/maintext_widget.dart';
import 'component/number_widget2.dart';
import 'component/sign_widget.dart';
import 'component/sizeedbox.dart';

class Authentication extends StatefulWidget {
  const Authentication({super.key});

  @override
  State<Authentication> createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> {
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
      sizedBoxhight(20),
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        mainText("OTP Authentication",
            "An authentication code has been \n sent to (+963) 99555668"),
        sizedBoxhight(80),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 70),
          child: Row(
            children: [
              numberWidget("6", "", 65, 65),
              sizedBoxwidth(10),
              numberWidget("8", "", 65, 65),
              sizedBoxwidth(10),
              numberWidget("4", "", 65, 65),
              sizedBoxwidth(10),
              numberWidget(" ", " ", 65, 65)
            ],
          ),
        ),
        sizedBoxhight(25),
        Column(
          children: [
            Center(
              child: InkWell(
                onTap: () {},
                child: const Text(
                  "Didn’t receive the SMS?",
                  style: TextStyle(
                      color: PRIMARAY_COLOR,
                      fontSize: 15,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
            sizedBoxhight(10),
            const Text(
              "Request New Code in 05:00",
              style: TextStyle(
                  color: GREY_3, fontSize: 13, fontWeight: FontWeight.w600),
            ),
            sizedBoxhight(40),
            Padding(
              padding: const EdgeInsets.only(left: 10),
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
                    child: singinWidget("Verify your phone")),
              ),
            ),
            sizedBoxhight(80),
            numberwidget2()
          ],
        )
      ])
    ]));
  }
}
