// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:shopping_app/component/sizeedbox.dart';
import '../../res/colors.dart';

// ignore: non_constant_identifier_names
Widget orderhistory_Botton(
    Color color, Color txtcolor, double width, double hight, String text) {
  return InkWell(
    onTap: () {},
    child: Container(
      width: width,
      height: hight,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: SECONDARAY_COLOR, width: 1.5),
          color: color),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              color: txtcolor, fontSize: 13, fontWeight: FontWeight.w400),
        ),
      ),
    ),
  );
}

// ignore: non_constant_identifier_names

//orderhistory_Container with  tow photo
Widget orderhistory_Container(Image image) {
  return Column(
    children: [
      Container(
          width: 398,
          height: 111,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: SECONDARAY_COLOR.withOpacity(0.1)),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 15),
                child: Column(
                  children: [
                    Text(
                      "TODAY, 12:10 AM",
                      style: TextStyle(
                          color: GREY_3,
                          fontSize: 17,
                          fontWeight: FontWeight.w600),
                    ),
                    sizedBoxhight(15),
                    Text(
                      "Ranim Omar\n Damascus-Alkaza-srt\n, 28294\n +963 997555668",
                      style: TextStyle(
                          color: GREY_3,
                          fontSize: 11,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
              sizedBoxwidth(80),
              Row(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Row(
                          children: [
                            Icon(
                              Icons.lock_sharp,
                              color: GREY_3,
                              size: 15,
                            ),
                            sizedBoxwidth(5),
                            Text(
                              "Bags",
                              style: TextStyle(
                                  color: GREY_3,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text(
                          "Antelope",
                          style: TextStyle(
                              color: GREY_3,
                              fontSize: 11,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30, top: 45),
                        child: Text(
                          "( Item 1 )",
                          style: TextStyle(
                              color: GREY_3,
                              fontSize: 11,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                  sizedBoxwidth(5),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 2),
                        child: image,
                      )
                    ],
                  )
                ],
              ),
            ],
          )),
    ],
  );
}
