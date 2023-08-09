// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../../res/colors.dart';

Widget numberWidget(String number, String letter, double width, double height) {
  return InkWell(
    onTap: () {},
    child: Container(
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
        child: Center(
          child: Column(
            children: [
              Text(
                number,
                style: const TextStyle(
                    color: GREY_3, fontSize: 25, fontWeight: FontWeight.w400),
              ),
              Text(
                letter,
                style: const TextStyle(
                    color: GREY_3, fontSize: 10, fontWeight: FontWeight.w700),
              ),
            ],
          ),
        )),
  );
}
