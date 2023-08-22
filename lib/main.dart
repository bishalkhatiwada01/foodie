import 'package:flutter/material.dart';
import 'package:foodie/Screens/ItemPage2.dart';
import 'package:foodie/Screens/ProfilePage.dart';
import 'package:foodie/Screens/SplashScreen.dart';
import 'package:sizer/sizer.dart';
import 'package:foodie/Screens/CartPage.dart';
import 'package:foodie/Screens/ItemPage.dart';

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
              "ProfilePage": (context) => const ProfilePage(),
            },
          );
        },
      ),
    );
  }
}
