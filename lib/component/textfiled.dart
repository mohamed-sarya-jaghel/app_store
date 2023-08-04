// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shopping_app/component/sizeedbox.dart';
import 'package:shopping_app/res/colors.dart';

Widget textFiled(
  String text,
  String hintText,
  Icon prefixIcon,
) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 40),
        child: Text(
          text,
          style: TextStyle(color: GREY_3, fontWeight: FontWeight.w600),
        ),
      ),
      sizedBoxhight(10),
      Padding(
        padding: const EdgeInsets.only(left: 40),
        child: TextField(
          decoration: InputDecoration(
              prefixIcon: prefixIcon,
              labelStyle: TextStyle(color: GREY_3, fontSize: 11),
              hintText: hintText,
              hintStyle: TextStyle(color: HINTTEXT_COLOR, fontSize: 17)),
        ),
      )
    ],
  );
}
