import 'package:flutter/material.dart';
import 'package:shopping_app/res/colors.dart';
import 'component/bottom_widget.dart';
import 'component/maintext_widget.dart';
import 'component/sign_widget.dart';
import 'component/sizeedbox.dart';
import 'component/text_checkbox_widget.dart';
import 'component/textfiled_widget.dart';

class Signin extends StatelessWidget {
  const Signin({super.key});

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
      mainText(
        "Let’s Sign You In",
        "Welcome back, you’ve been missed!",
      ),
      sizedBoxhight(60),
      textFiled(
          "Username or Email",
          "Ranimomar",
          const Icon(
            Icons.person_outlined,
            color: GREY_3,
          )),
      sizedBoxhight(40),
      textFiled(
          " Password",
          "• • • • • • • •",
          const Icon(
            Icons.lock_rounded,
            color: GREY_3,
          )),
      sizedBoxhight(20),
      Row(
        children: [
          textcheckbox(
            const Icon(
              Icons.check_box_outlined,
              color: GREY_3,
            ),
            "Remember me",
          ),
          sizedBoxwidth(90),
          InkWell(
              onTap: () {
                Navigator.of(context).pushNamed("forgetPassword");
              },
              child: RichText(
                text: const TextSpan(
                  text: 'Forgot password?',
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: GREY_3,
                      fontWeight: FontWeight.w400),
                ),
              ))
        ],
      ),
      sizedBoxhight(120),
      Padding(
        padding: const EdgeInsets.only(left: 40),
        child: SizedBox(
          width: 305,
          height: 44,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  backgroundColor: PRIMARAY_COLOR),
              onPressed: () {
                Navigator.of(context).pushNamed("Signup");
              },
              child: singinWidget("Sign in")),
        ),
      ),
      sizedBoxhight(20),
      Row(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 110),
            child: Text(
              "Don’t have an account? ",
              style: TextStyle(
                  fontSize: 11, fontWeight: FontWeight.w400, color: GREY_3),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed("Signin");
            },
            child: const Text(
              "Sign up",
              style: TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
            ),
          )
        ],
      ),
      sizedBoxhight(55),
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: elvatBtnFacbook(
                const Icon(Icons.facebook), "Connect with Facebook", 13),
          ),
        ],
      )
    ]));
  }
}
