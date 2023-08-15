// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:shopping_app/component/sizeedbox.dart';
import 'package:shopping_app/res/colors.dart';

// ignore: non_constant_identifier_names
Widget PicHomePage(
  Image mainimage,
  String itemname,
  String detealtxt,
  String pricetxt,
) {
  return Container(
    width: 130,
    height: 150,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(3),
    ),
    child: Padding(
      padding: const EdgeInsets.only(
        left: 5,
      ),
      child: Column(  
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          mainimage,
          Row(
            children: [
              Text(
                itemname,
                style: const TextStyle(
                    fontSize: 9, color: BLACK, fontWeight: FontWeight.w400),
              ),
              sizedBoxwidth(80),
              Image.asset("images/heart.jpg")
            ],
          ),
          Text(
            detealtxt,
            style: const TextStyle(
                fontSize: 8, color: LIGHTGREY, fontWeight: FontWeight.w400),
          ),
          sizedBoxhight(20),
          Row(
            children: [
              Text(
                pricetxt,
                style: const TextStyle(
                    fontSize: 9,
                    color: SECONDARAY_COLOR,
                    fontWeight: FontWeight.w400),
              ),
              sizedBoxwidth(70),
              Image.asset("images/arrowforward_hompage.jpg")
            ],
          )
        ],
      ),
    ),
  );
}
