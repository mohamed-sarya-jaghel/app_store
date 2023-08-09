import 'package:flutter/material.dart';
import 'package:shopping_app/Get_Started_page.dart';
import 'package:shopping_app/dilevery_address.dart';
import 'package:shopping_app/forget_password_page.dart';
import 'package:shopping_app/home_page.dart';
import 'package:shopping_app/Profile_Orderhistory.dart';
import 'package:shopping_app/Profile_Home_page.dart';
import 'package:shopping_app/SignUp_page.dart';
import 'package:shopping_app/SingIn_page.dart';
import 'Phone_Verified_page.dart';
import 'authentication_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const GetStarted(),
      routes: {
        "Signup": (context) => const Signup(),
        "Signin": (context) => const Signin(),
        "forgetPassword": (context) => const ForgetPasswrod(),
        "authentication": (context) => const Authentication(),
        "phoneverified": (context) => const PhoneVerified(),
        "deliveraddress": (context) => const deliveryAdress(),
        "homepage": (context) => const Homepage(),
        "profileinfo": (context) => const Profileinfo(),
        "orderhistory": (context) => const OrderHistory(),
      },
    );
  }
}
