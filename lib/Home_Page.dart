// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:shopping_app/component/sizeedbox.dart';
import 'package:shopping_app/res/colors.dart';
import 'component/Elvat_Btn3w/bottom_widget.dart';
import 'component/Photos_Homepage_Widget.dart';
import 'component/Setting_Options/order_history_continer.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int selectindex = 0;
  //List pages = [ProductFavorite(),];

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
                Image.asset(
                  "images/Ellipse (1).jpg",
                  scale: 2,
                )
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
                                        width: 250,
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
      sizedBoxhight(20),
      Image.asset("images/homepage_profile.jpg"),
      sizedBoxhight(30),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          orderhistory_Botton(SECONDARAY_COLOR, WHITE, 52, 26, "All"),
          orderhistory_Botton(WHITE, SECONDARAY_COLOR, 51, 26, "Bags"),
          orderhistory_Botton(WHITE, SECONDARAY_COLOR, 58, 26, "Rings"),
          orderhistory_Botton(WHITE, SECONDARAY_COLOR, 76, 26, "necklace"),
          orderhistory_Botton(WHITE, SECONDARAY_COLOR, 65, 26, "earring"),
        ],
      ),
      sizedBoxhight(25),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed("proudctpage");
                  },
                  child: PicHomePage(
                    Image.asset(
                      "images/home_pic1.jpg",
                      width: 121,
                      height: 92,
                    ),
                    "Rings",
                    "Cream elegant",
                    "10.90",
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: PicHomePage(
                    Image.asset(
                      "images/home_pic2.jpg",
                      width: 121,
                      height: 92,
                    ),
                    "Bags",
                    "Antelope ",
                    "200.00",
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: PicHomePage(
                    Image.asset(
                      "images/home_pic3.jpg",
                      width: 121,
                      height: 92,
                    ),
                    "Rings",
                    "Antelope ",
                    "10.00",
                  ),
                )
              ],
            ),
            sizedBoxhight(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {},
                  child: PicHomePage(
                    Image.asset(
                      "images/home_pic4.jpg",
                      width: 121,
                      height: 92,
                    ),
                    "Rings",
                    "Cream elegant",
                    "10.90",
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: PicHomePage(
                    Image.asset(
                      "images/home_pic3.jpg",
                      width: 121,
                      height: 92,
                    ),
                    "Bags",
                    "Antelope ",
                    "200.00",
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: PicHomePage(
                    Image.asset(
                      "images/home_pic4.jpg",
                      width: 121,
                      height: 92,
                    ),
                    "Rings",
                    "Antelope ",
                    "10.00",
                  ),
                )
              ],
            ),
            sizedBoxhight(10),
            Padding(
              padding: const EdgeInsets.only(left: 350),
              child: InkWell(
                  onTap: () {},
                  child: Text(
                    "See more",
                    style: TextStyle(
                        color: GREY_3,
                        fontSize: 10,
                        fontWeight: FontWeight.w500),
                  )),
            )
          ],
        ),
      ),
      sizedBoxhight(50),
      BottomNavigationBar(
        iconSize: 20,
        currentIndex: selectindex,
        onTap: (value) {
          setState(() {
            selectindex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: PRIMARAY_COLOR,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border,
              color: GREY_3,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
              color: GREY_3,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
              color: GREY_3,
            ),
            label: '',
          ),
        ],
      ),
    ]));
  }
}
