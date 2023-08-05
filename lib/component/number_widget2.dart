import 'package:flutter/cupertino.dart';
import 'package:shopping_app/component/sizeedbox.dart';

import 'numbers_widget.dart';

Widget numberwidget2() {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          numberWidget("1", "", 123, 46),
          numberWidget("2", "ABC", 123, 46),
          numberWidget("3", "DEF", 123, 46),
        ],
      ),
      sizedBoxhight(10),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          numberWidget("4", "GHI", 123, 46),
          numberWidget("5", "JKL", 123, 46),
          numberWidget("6", "MNO", 123, 46),
        ],
      ),
      sizedBoxhight(10),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          numberWidget("7", "PQRS", 123, 46),
          numberWidget("8", "TUV", 123, 46),
          numberWidget("9", "WXYZ", 123, 46),
        ],
      ),
      sizedBoxhight(10),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 140),
            child: Row(
              children: [
                numberWidget("0", "", 123, 46),
                sizedBoxwidth(20),
                numberWidget("del", "", 123, 46),
              ],
            ),
          ),
        ],
      ),
    ],
  );
}
