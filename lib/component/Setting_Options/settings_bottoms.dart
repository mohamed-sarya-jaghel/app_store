// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../../res/colors.dart';

// ignore: non_constant_identifier_names
Widget setting_Botton(
  String text,
) {
  return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
    Padding(
      padding: const EdgeInsets.only(left: 10),
      child: SizedBox(
        width: 395,
        height: 44,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: TextStyle(
                  fontSize: 17, fontWeight: FontWeight.w400, color: GREY_3),
            ),
            Icon(
              Icons.arrow_forward_ios_rounded,
              color: GREY_3,
            )
          ],
        ),
      ),
    ),
    const Divider(
      endIndent: 30,
      thickness: 0.2,
      color: GREY_3,
    )
  ]);
}
