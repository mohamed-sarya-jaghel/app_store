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
        padding: const EdgeInsets.only(left: 40, right: 60),
        child: TextFormField(
          decoration: InputDecoration(
              focusedBorder:
                  UnderlineInputBorder(borderSide: BorderSide(color: GREY_4)),
              prefixIcon: prefixIcon,
              labelStyle: TextStyle(color: GREY_3, fontSize: 11),
              hintText: hintText,
              hintStyle: TextStyle(color: HINTTEXT_COLOR, fontSize: 17)),
        ),
      )
    ],
  );
}

Widget textFileddelivry(String labeltxt) {
  return Padding(
    padding: const EdgeInsets.only(right: 80, left: 20, bottom: 20),
    child: TextField(
      decoration: InputDecoration(
        focusedBorder:
            UnderlineInputBorder(borderSide: BorderSide(color: GREY_4)),
        labelText: labeltxt,
      ),
    ),
  );
}
