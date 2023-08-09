import 'package:flutter/material.dart';
import 'package:shopping_app/component/sizeedbox.dart';
import 'package:shopping_app/res/colors.dart';

Widget elvatBtnFacbook(Icon icon, String text, double size) {
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
            style: TextStyle(fontSize: size, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    ),
  );
}

Widget elvatBtnGender(
  String text,
  Color color_background,
  Color color_text,
) {
  return SizedBox(
    width: 95,
    height: 44,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          backgroundColor: color_background),
      onPressed: () {},
      child: Text(
        text,
        style: TextStyle(
            fontSize: 15, fontWeight: FontWeight.w400, color: color_text),
      ),
    ),
  );
}

Widget elvatBtnSquar(
  Color color_background,
) {
  return SizedBox(
    width: 44,
    height: 44,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          backgroundColor: color_background),
      onPressed: () {},
      child: null,
    ),
  );
}
