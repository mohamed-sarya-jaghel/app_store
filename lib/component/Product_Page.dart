// ignore_for_file: non_constant_identifier_names, file_names

import 'package:flutter/material.dart';
import 'package:shopping_app/component/sizeedbox.dart';

import '../res/colors.dart';


Widget Icon_text_Productpage(Image image, String text) {
  return Row(
    children: [
     image,
      sizedBoxwidth(10),
      Text(
        text,
        style:
           const TextStyle(color: GREY_3, fontWeight: FontWeight.w400, fontSize: 12),
      )
    ],
  );
}
