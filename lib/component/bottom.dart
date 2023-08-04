import 'package:flutter/material.dart';
import 'package:shopping_app/component/sizeedbox.dart';
import 'package:shopping_app/res/colors.dart';

Widget elvatBtn(Icon icon, String text, double size) {
  return SizedBox(
    width: 305,
    height: 44,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          backgroundColor: BLUE),
      onPressed: () {},
      child: Row(
        children: [
          icon,
          sizedBoxwidth(30),
          Text(
            text,
            style: TextStyle(fontSize: size,fontWeight: FontWeight.w400),
          ),
        ],
      ),
    ),
  );
}
