import 'package:flutter/material.dart';
import 'package:shopping_app/component/sizeedbox.dart';
import 'package:shopping_app/res/colors.dart';
import 'component/Elvat_Btn3w/bottom_widget.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: const EdgeInsets.only(top: 40, left: 10),
        child: Row(
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed("profileinfo");
              },
              child: Image.asset("images/info_icon.jpg"),
            ),
            sizedBoxwidth(270),
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset("images/big_circle.jpg"),
                Image.asset("images/small_circle.jpg"),
                Image.asset("images/profile_pic.jpg")
              ],
            )
          ],
        ),
      ),
      const Text(
        "Welcome, Ranim",
        style: TextStyle(
            color: GREY,
            fontSize: 15,
            fontWeight: FontWeight.w400,
            letterSpacing: -0.24),
      ),
      sizedBoxhight(30),
      Row(children: [
        Padding(
            padding: const EdgeInsets.fromLTRB(7, 8, 7, 8),
            child: Container(
                width: 305,
                height: 43,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(150),
                    color: GREY_Textfiled.withOpacity(0.1)),
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search products ...",
                          hintStyle: TextStyle(
                              fontSize: 15,
                              color: GREY_hintTextfiled.withOpacity(0.3)),
                          prefixIcon: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.search,
                                color: GREY_hintTextfiled.withOpacity(0.6),
                              )),
                          suffixIcon: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.keyboard_voice,
                                color: GREY_hintTextfiled.withOpacity(0.6),
                              ))),
                    )))),
        InkWell(
          onTap: () {
            showModalBottomSheet(
                context: context,
                // ignore: non_constant_identifier_names, avoid_types_as_parameter_names
                builder: (BuildContext) {
                  return SizedBox(
                    height: 900,
                    width: 428,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 50, top: 30),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Gender",
                              style: TextStyle(
                                  color: GREY_3,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            ),
                            sizedBoxhight(20),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    elvatBtnGender(
                                        "Men", PRIMARAY_COLOR, WHITE),
                                    sizedBoxwidth(30),
                                    elvatBtnGender(
                                        "Women", WOMEN_BACKGROUND, GREY_3),
                                    sizedBoxwidth(30),
                                    elvatBtnGender(
                                        "Both", WOMEN_BACKGROUND, GREY_3)
                                  ],
                                )
                              ],
                            ),
                            sizedBoxhight(40),
                            Image.asset("images/Price Rate.jpg"),
                            sizedBoxhight(30),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                elvatBtnSquar(PRIMARAY_COLOR),
                                elvatBtnSquar(SECONDARAY_COLOR),
                                elvatBtnSquar(PINK),
                                elvatBtnSquar(ORANGE),
                                elvatBtnSquar(GREY_3),
                                elvatBtnSquar(GREY_4)
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 70,
                                  ),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 269,
                                        height: 42,
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              backgroundColor: PRIMARAY_COLOR),
                                          onPressed: () {},
                                          child: const Text(
                                            "Apply Filter",
                                            style: TextStyle(fontSize: 20),
                                          ),
                                        ),
                                      ),
                                      sizedBoxwidth(10),
                                      SizedBox(
                                        width: 88,
                                        height: 42,
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          15)),
                                              backgroundColor:
                                                  SECONDARAY_COLOR),
                                          onPressed: () {},
                                          child: const Text(
                                            "Reset",
                                            style: TextStyle(fontSize: 20),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            sizedBoxhight(30),
                            Padding(
                              padding: const EdgeInsets.only(left: 90),
                              child: Image.asset("images/Home Indicator.jpg"),
                            )
                          ]),
                    ),
                  );
                });
          },
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                "images/background_setting.png",
              ),
              Image.asset("images/setting_icon.png")
            ],
          ),
        )
      ]),
    ]));
  }
}
