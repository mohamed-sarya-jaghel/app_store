import 'package:flutter/material.dart';

Widget textcheckbox(
  Icon icon,
  String text,
) {
  return Padding(
    padding: const EdgeInsets.only(left: 40),
    child: Row(
      children: [
        InkWell(onTap: () {}, child: icon),
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
