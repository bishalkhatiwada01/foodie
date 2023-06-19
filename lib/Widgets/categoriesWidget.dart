import 'package:flutter/material.dart';
import 'package:foodie/constant/const.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: foodList.length,
      itemBuilder: (context, index) {
        final food = foodList[index];
        return Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: InkWell(
            onTap: () {
              Navigator.pushNamed(context, "ItemPage2");
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: const Offset(0, 3),
                    )
                  ]),
              child: Image.asset(
                food.imageUrl,
                width: 80,
                height: 80,
              ),
            ),
          ),
        );
      },
    );
  }
}
