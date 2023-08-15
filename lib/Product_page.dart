// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:shopping_app/res/colors.dart';

import 'component/Elvat_Btn3w/bottom_widget.dart';
import 'component/Product_Page.dart';
import 'component/sizeedbox.dart';

class ProudctPage extends StatefulWidget {
  const ProudctPage({super.key});

  @override
  State<ProudctPage> createState() => _ProudctPageState();
}

class _ProudctPageState extends State<ProudctPage> {
  String add = "Add to cart";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Row(children: [
            InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Image.asset("images/arrowback.jpg"),
            ),
            sizedBoxwidth(120),
            const Text(
              "Product Page",
              style: TextStyle(
                  color: GREY, fontSize: 15, fontWeight: FontWeight.w600),
            ),
            sizedBoxwidth(120),
            IconButton(onPressed: () {}, icon: const Icon(Icons.lock))
          ])),
      Padding(
          padding: const EdgeInsets.only(left: 70),
          child: Stack(
            children: [
              Image.asset("images/product_page.jpg"),
              Positioned(
                  bottom: 0.00001,
                  left: 100,
                  child: InkWell(
                      onTap: () {},
                      child: Image.asset("images/product_plus.jpg"))),
            ],
          )),
      const Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10, top: 10),
            child: Text(
              "Bags ",
              style: TextStyle(
                  color: GREY_3, fontSize: 17, fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 290, top: 10),
            child: Text(
              "256.90 ",
              style: TextStyle(
                  color: SECONDARAY_COLOR,
                  fontSize: 18,
                  fontWeight: FontWeight.w400),
            ),
          )
        ],
      ),
      const Padding(
        padding: EdgeInsets.only(left: 10, top: 10),
        child: Text(
          "COLOR",
          style: TextStyle(
              color: GREY_3, fontSize: 17, fontWeight: FontWeight.w600),
        ),
      ),
      sizedBoxhight(10),
      Padding(
        padding: const EdgeInsets.only(left: 20, top: 10),
        child: Row(
          children: [
            elvatBtnCircle(CIRCLE1),
            sizedBoxwidth(10),
            elvatBtnCircle(CIRCLE2),
            sizedBoxwidth(10),
            elvatBtnCircle(CIRCLE3),
            sizedBoxwidth(10),
            elvatBtnCircle(CIRCLE4),
            sizedBoxwidth(120),
            SizedBox(
              width: 95,
              height: 44,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    backgroundColor: SECONDARAY_COLOR),
                onPressed: () {
                  setState(() {
                    add = "Added";
                  });
                },
                child: Text(
                  add,
                  style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.w400, color: WHITE),
                ),
              ),
            )
          ],
        ),
      ),
      const Padding(
        padding: EdgeInsets.only(left: 10, top: 10),
        child: Text(
          "DESCRIPTION",
          style: TextStyle(
              color: GREY_3, fontSize: 17, fontWeight: FontWeight.w600),
        ),
      ),
      const Padding(
        padding: EdgeInsets.only(left: 10, top: 10),
        child: Text(
          "- Celana Jeans dengan Pola Mom Fit\n- Bahan Katun Denim Tidak Melar \n- Pinggang Elastis memakai karet\n- Nyaman dipakai....",
          style: TextStyle(
              color: GREY_3, fontSize: 12, fontWeight: FontWeight.w400),
        ),
      ),
      const Divider(
        thickness: 2,
      ),
      Row(
        children: [
          Icon_text_Productpage(
              Image.asset("images/Vector (2).jpg"), "Original product"),
          sizedBoxwidth(60),
          Icon_text_Productpage(Image.asset("images/Vector (3).jpg"),
              "Return of goods in 5 days"),
        ],
      ),
      sizedBoxhight(10),
      Row(
        children: [
          Icon_text_Productpage(
              Image.asset("images/Vector (6).jpg"), "Voucher code available"),
          sizedBoxwidth(24),
          Icon_text_Productpage(Image.asset("images/Vector (5).jpg"),
              "Pay directly at your place"),
        ],
      )
    ]));
  }
}
//
//