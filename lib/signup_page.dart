import 'package:flutter/material.dart';
import 'package:shopping_app/component/textfiled_widget.dart';
import 'package:shopping_app/res/colors.dart';
import 'component/bottom_widget.dart';
import 'component/maintext_widget.dart';
import 'component/sign_widget.dart';
import 'component/sizeedbox.dart';
import 'component/text_checkbox_widget.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
            "Getting Started",
            "Create an account to continue!",
          ),
          sizedBoxhight(60),
          textFiled(
              "Enter your email",
              "ranem.omarr@example.com",
              const Icon(
                Icons.email_outlined,
                color: GREY_3,
              )),
          sizedBoxhight(40),
          textFiled(
              "Username",
              "ex: Ranim",
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
          sizedBoxhight(25),
          textcheckbox(
            const Icon(
              Icons.check_box_outlined,
              color: GREY_3,
            ),
            "By creating an account, you agree to our\n Term & Conditions",
          ),
          sizedBoxhight(20),
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
                  child: singinWidget("Sign Up")),
            ),
          ),
          sizedBoxhight(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Already have an account?",
                style: TextStyle(
                    fontSize: 11, fontWeight: FontWeight.w400, color: GREY_3),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed("Signin");
                },
                child: const Text(
                  "Sign in",
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
        ],
      ),
    );
  }
}
