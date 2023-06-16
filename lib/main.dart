import 'package:flutter/material.dart';
import 'package:foodie/Pages/CartPage.dart';

import 'Pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
        "/": (context) => HomePage(),
        "cartPage": (context) => CartPage()
      },
    );
  }
}
