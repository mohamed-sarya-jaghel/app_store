import 'package:flutter/material.dart';

Widget textcheckbox(
  Checkbox check,
  String text,
) {
  return Padding(
    padding: const EdgeInsets.only(left: 40),
    child: Row(
      children: [
        check,
        Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            children: [
              Text(
                text,
                style:
                    const TextStyle(fontSize: 11, fontWeight: FontWeight.w400),
              ),
            ],
          ),
        )
      ],
    ),
  );
}
