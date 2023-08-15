// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:shopping_app/res/colors.dart';

import 'component/sizeedbox.dart';

class ChatWithStore extends StatelessWidget {
  const ChatWithStore({super.key});

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
            sizedBoxwidth(120),
            const Text(
              "Order History",
              style: TextStyle(
                  color: GREY, fontSize: 15, fontWeight: FontWeight.w600),
            )
          ])),
      const Center(
        child: Text(
          "Yesterday 9:41",
          style:
              TextStyle(color: GREY, fontSize: 11, fontWeight: FontWeight.w500),
        ),
      ),
      sizedBoxhight(30),
      const Padding(
        padding: EdgeInsets.only(left: 60),
        child: Text(
          "Admin",
          style:
              TextStyle(color: GREY, fontSize: 11, fontWeight: FontWeight.w400),
        ),
      ),
      sizedBoxhight(5),
      Padding(
        padding: const EdgeInsets.only(left: 60),
        child: Container(
          width: 267,
          height: 137,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: WHITH1),
          child: const Padding(
            padding: EdgeInsets.only(left: 13, top: 10),
            child: Text(
              "Hello, Thank you for contacting store \nBefore starting, will store this and personal data according to the privacy policy ",
              style: TextStyle(
                  color: BLACK, fontSize: 17, fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ),
      sizedBoxhight(20),
      Padding(
        padding: const EdgeInsets.only(left: 60),
        child: Container(
          width: 267,
          height: 34,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: BLUE1),
          child: const Padding(
            padding: EdgeInsets.only(left: 13, top: 4),
            child: Text(
              "please i need to help me ",
              style: TextStyle(
                  color: WHITE, fontSize: 17, fontWeight: FontWeight.w400),
            ),
          ),
        ),
      ),
      sizedBoxhight(580),
      const Divider(),
      Row(
        children: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.attach_file,
                color: GREY_hintTextfiled,
              )),
          Center(
            child: Container(
              width: 334,
              height: 36,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(
                      color: GREY_hintTextfiled.withOpacity(0.5), width: 1.5)),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 5, left: 10),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "iMessage",
                      hintStyle:
                          TextStyle(color: GREY_hintTextfiled.withOpacity(0.5)),
                      suffixIcon: const Icon(
                        Icons.mic_none,
                        color: HINTTEXT_COLOR,
                      )),
                ),
              ),
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.send,
                color: GREY_hintTextfiled,
              )),
        ],
      ),
      sizedBoxhight(40),
      Center(child: Image.asset("images/Home Indicator.jpg"))
    ]));
  }
}
