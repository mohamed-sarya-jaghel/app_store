// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shopping_app/component/sign_widget.dart';
import 'package:shopping_app/res/colors.dart';

import 'component/maintext_widget.dart';
import 'component/sizeedbox.dart';
import 'component/textfiled_widget.dart';

// ignore: camel_case_types
class deliveryAdress extends StatefulWidget {
  const deliveryAdress({super.key});

  @override
  State<deliveryAdress> createState() => _deliveryAdressState();
}

// ignore: camel_case_types
class _deliveryAdressState extends State<deliveryAdress> {
  double containerWidth = 120;
  double containerhigth = 49;
  String text = "";
  bool showFirst = true;

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
      mainText(
        "Enter the delivery address ",
        " ",
      ),
      sizedBoxhight(20),
      textFileddelivry("First name"),
      textFileddelivry("Last name"),
      textFileddelivry("Address"),
      textFileddelivry("City"),
      textFileddelivry("+963"),
      sizedBoxhight(30),
      InkWell(
        onTap: () {
          setState(() {
            containerWidth += 350;
            containerhigth += 150;
            showFirst = false;
          });
        },
        child: AnimatedCrossFade(
          duration: Duration(seconds: 2),
          firstChild: Container(
            decoration: BoxDecoration(
                border: Border.all(color: PRIMARAY_COLOR, width: 1.5)),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: Text(
                "Add a note",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    color: PRIMARAY_COLOR),
              ),
            ),
          ),
          secondChild: Column(
            children: [
              AnimatedContainer(
                width: containerWidth,
                height: containerhigth,
                duration: Duration(seconds: 2),
                decoration: BoxDecoration(
                    border: Border.all(color: PRIMARAY_COLOR, width: 1.5)),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Add a note here",
                    hintStyle: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: PRIMARAY_COLOR),
                  ),
                ),
              ),
              Container(
                width: 59,
                height: 18,
                margin: EdgeInsets.only(left: 410, top: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  color: GREY_3,
                ),
                child: InkWell(
                  onTap: () {},
                  child: Text("Add note"),
                ),
              ),
            ],
          ),
          crossFadeState:
              showFirst ? CrossFadeState.showFirst : CrossFadeState.showSecond,
        ),
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
                Navigator.of(context).pushNamed("Signup");
              },
              child: singinWidget("Save")),
        ),
      ),
    ]));
  }
}
