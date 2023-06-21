import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:foodie/constant/const.dart';

class NewestItemsWidget extends StatelessWidget {
  const NewestItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemCount: foodList.length,
      itemBuilder: (context, index) {
        final food = foodList[index];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Container(
            width: 380,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 10,
                  offset: const Offset(0, 3),
                )
              ],
            ),
            child: Row(children: [
              InkWell(
                onTap: () {},
                child: Container(
                  alignment: Alignment.center,
                  child: Image.asset(
                    food.imageUrl,
                    height: 120,
                    width: 150,
                  ),
                ),
              ),
              SizedBox(
                width: 190,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      food.name,
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      food.description,
                      style: TextStyle(
                        fontSize: 16,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                    RatingBar.builder(
                      initialRating: 4,
                      minRating: 1,
                      direction: Axis.horizontal,
                      itemCount: 5,
                      itemSize: 18,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 4),
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Colors.red,
                      ),
                      onRatingUpdate: (index) {},
                    ),
                    Text(
                      "\$ ${food.price}",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 10,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.favorite_border,
                      color: Colors.red,
                      size: 26,
                    ),
                    Icon(
                      CupertinoIcons.cart,
                      color: Colors.red,
                      size: 26,
                    ),
                  ],
                ),
              ),
            ]),
          ),
        );
      },
    );
  }
}
