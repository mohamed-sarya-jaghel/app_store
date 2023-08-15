// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../../res/colors.dart';

Widget numberWidget(double width, double height) {
  return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            const BoxShadow(
              color: GREY_4,
              offset: Offset(0, 1),
            ),
          ],
          color: WHITE),
      child: const Padding(
        padding: EdgeInsets.only(left: 20, top: 10),
        child: TextField(style: TextStyle(color: GREY_3,fontWeight: FontWeight.w700,fontSize: 22),
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            border: InputBorder.none,
          ),
        ),
      ));
}
