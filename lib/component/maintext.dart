import 'package:flutter/cupertino.dart';

import '../res/colors.dart';

Widget mainText(String textmain, String hinttext) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Text(
          textmain,
          style: const TextStyle(
              color: GREY_3, fontSize: 28, fontWeight: FontWeight.w700),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 15, top: 5),
        child: Text(
          hinttext,
          style: const TextStyle(color: PRIMARAY_COLOR, fontSize: 15),
        ),
      ),
    ],
  );
}
