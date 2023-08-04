import 'package:flutter/material.dart';
import 'package:shopping_app/component/sizeedbox.dart';

Widget singinWidget(
  String text,
) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Padding(
        padding: EdgeInsets.only(left: 95),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
        ),
      ),
      sizedBoxwidth(50),
      const Icon(Icons.arrow_forward_sharp)
    ],
  );
}
