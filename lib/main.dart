import 'package:flutter/material.dart';
import 'package:shopping_app/Get_Started_page.dart';
import 'package:shopping_app/dilevery_address.dart';
import 'package:shopping_app/forget_password_page.dart';
import 'package:shopping_app/home_page.dart';
import 'package:shopping_app/Profile_Orderhistory.dart';
import 'package:shopping_app/Profile_Home_page.dart';
import 'package:shopping_app/SignUp_page.dart';
import 'package:shopping_app/SingIn_page.dart';
import 'About_Store.dart';
import 'Chat_Store_page.dart';
import 'Phone_Verified_page.dart';
import 'Product_page.dart';
import 'Profile_Setting.dart';
import 'authentication_page.dart';

void main() {
  runApp(const AppStore());
}

class AppStore extends StatelessWidget {
  const AppStore({super.key});
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
        "chatwithstore": (context) => const ChatWithStore(),
        "aboutstore": (context) => const AboutStore(),
        "proudctpage": (context) => const ProudctPage(),
        "settingpage": (context) => const SettingPage(),
      },
    );
  }
}
