import 'package:flutter/material.dart';
import 'package:foodie/Pages/AccountPage.dart';
import 'package:foodie/Pages/ItemPage2.dart';
import 'package:foodie/Pages/ProfilePage.dart';
import 'package:foodie/Pages/SplashScreen.dart';
import 'package:sizer/sizer.dart';
import 'package:foodie/Pages/CartPage.dart';
import 'package:foodie/Pages/ItemPage.dart';

import 'Pages/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Sizer(
        builder: (context, orientation, deviceType) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Foodie',
            theme: ThemeData(
              scaffoldBackgroundColor: const Color(0xFFF5F5F3),
            ),
            routes: {
              "/": (context) => const SplashScreen(),
              "cartPage": (context) => const CartPage(),
              "ItemPage": (context) => const ItemPage(),
              "ItemPage2": (context) => const ItemPage2(),
              "ProfilePage": (context) => const ProfilePage(),
            },
          );
        },
      ),
    );
  }
}
