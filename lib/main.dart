import 'package:flutter/material.dart';
import 'package:foodie/Pages/CartPage.dart';
import 'package:foodie/Pages/ItemPage.dart';

import 'Pages/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Foodie",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF5F5F3),
      ),
      // home: const HomePage(),
      routes: {
        "/": (context) => const HomePage(),
        "cartPage": (context) => const CartPage(),
        "itemPage": (context) => const ItemPage(),
      },
    );
  }
}
