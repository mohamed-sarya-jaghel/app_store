// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:shopping_app/res/colors.dart';
import 'package:shopping_app/res/strings.dart';
import 'component/sizeedbox.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BACKGROUND_COLOR,
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  boxShadow: const [BoxShadow(blurRadius: 25)],
                  borderRadius: BorderRadius.circular(50),
                  color: ORANGE,
                ),
                child: Center(
                  child: Text(
                    "logo",
                    style: TextStyle(color: WHITE, fontSize: 14),
                  ),
                ),
              ),
            ),
          ),
          Text(
            "Accessories Store",
            style: TextStyle(color: GREY_3, fontSize: 20),
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 220, top: 40),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(100),
                      topRight: Radius.circular(100)),
                  child: Image.asset(
                    "images/product_page.jpg",
                    width: 220,
                    height: 320,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 200, top: 220),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(193),
                      bottomRight: Radius.circular(193)),
                  child: Image.asset(
                    "images/product_page.jpg",
                    width: 220,
                    height: 307,
                  ),
                ),
              )
            ],
          ),
          sizedBoxhight(40),
          Text(
            ConstString.BEST_JEWELRY,
            style: TextStyle(
                fontSize: 40, color: GREY_3, fontWeight: FontWeight.w700),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20, top: 70),
                child: SizedBox(
                  width: 158,
                  height: 51,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        backgroundColor: PRIMARAY_COLOR),
                    onPressed: () {
                      Navigator.of(context).pushNamed("Signup");
                    },
                    child: Text(
                      "Get Start",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}