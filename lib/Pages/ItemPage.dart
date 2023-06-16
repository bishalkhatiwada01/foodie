import 'package:flutter/material.dart';
import 'package:foodie/Widgets/AppBarWidget.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 5),
        child: ListView(
          children: [
            AppBarWidget(),
          ],
        ),
      ),
    );
  }
}
