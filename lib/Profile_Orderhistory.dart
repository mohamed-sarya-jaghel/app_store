import 'package:flutter/material.dart';
import 'package:shopping_app/component/sizeedbox.dart';
import 'package:shopping_app/res/colors.dart';

import 'component/Setting_Options/order_history_continer.dart';

class OrderHistory extends StatelessWidget {
  const OrderHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: const EdgeInsets.only(top: 25),
        child: Row(
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Image.asset("images/arrowback.jpg"),
            ),
            sizedBoxwidth(120),
            const Text(
              "Order History",
              style: TextStyle(
                  color: GREY, fontSize: 15, fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
      sizedBoxhight(30),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          orderhistory_Botton(WHITE, SECONDARAY_COLOR, 40, 26, "All"),
          orderhistory_Botton(WHITE, SECONDARAY_COLOR, 69, 26, "Packed"),
          orderhistory_Botton(SECONDARAY_COLOR, WHITE, 68, 26, "Done"),
          orderhistory_Botton(WHITE, SECONDARAY_COLOR, 54, 26, "Cancel"),
          orderhistory_Botton(WHITE, SECONDARAY_COLOR, 63, 26, "Return")
        ],
      ),
      sizedBoxhight(30),
      orderhistory_Container(Image.asset(
        "images/Rectangle 23.jpg",
        scale: 1.1,
      )),
      sizedBoxhight(5),
      orderhistory_Container(Image.asset(
        "images/Rectangle 189.jpg",
        scale: 1.1,
      )),
    ]));
  }
}
