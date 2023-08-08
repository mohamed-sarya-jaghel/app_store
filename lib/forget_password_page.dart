// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shopping_app/component/maintext_widget.dart';
import 'package:shopping_app/res/colors.dart';

import 'component/number_widget2.dart';
import 'component/numbers_widget.dart';
import 'component/sign_widget.dart';
import 'component/sizeedbox.dart';

// ignore: must_be_immutable
class ForgetPasswrod extends StatefulWidget {
  ForgetPasswrod({super.key});

  @override
  State<ForgetPasswrod> createState() => _ForgetPasswrodState();
}

TextEditingController controller = TextEditingController();

class _ForgetPasswrodState extends State<ForgetPasswrod> {
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
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          mainText("Password Recovery",
              "Enter your phone number to recover your password"),
          sizedBoxhight(80),
          Padding(
            padding: EdgeInsets.only(left: 40),
            child: Text(
              "Phone Number",
              style: TextStyle(
                  color: GREY_4, fontWeight: FontWeight.w500, fontSize: 12),
            ),
          ),
          sizedBoxhight(10),
          Padding(
            padding: EdgeInsets.only(left: 40),
            child: TextFormField(
              controller: controller,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.check_circle,
                    color: GREEN,
                    size: 20,
                  ),
                  prefix: Text("+963   "),
                  prefixStyle: TextStyle(
                      color: GREY_3, fontSize: 17, fontWeight: FontWeight.w400),
                  labelStyle: TextStyle(color: GREY_3, fontSize: 11),
                  hintStyle: TextStyle(
                      color: GREY_3,
                      fontSize: 22,
                      fontWeight: FontWeight.w700)),
            ),
          )
        ],
      ),
      sizedBoxhight(60),
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
                Navigator.of(context).pushNamed("authentication");
              },
              child: singinWidget("Continue")),
        ),
      ),
      sizedBoxhight(90),
  
        numberwidget2()
   
    ]));
  }
}
