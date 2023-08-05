import 'package:flutter/cupertino.dart';
import 'package:shopping_app/component/sizeedbox.dart';

import '../res/colors.dart';

Widget mainText(String textmain, String hinttext) {
  return Padding(
    padding: const EdgeInsets.only(left: 15),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          textmain,
          style: const TextStyle(
              color: GREY_3, fontSize: 28, fontWeight: FontWeight.w700),
        ),sizedBoxhight(10),
        Text(
          hinttext,
          style: const TextStyle(color: PRIMARAY_COLOR, fontSize: 15),
        ),
      ],
    ),
  );
}
