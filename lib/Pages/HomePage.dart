import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodie/Widgets/NewestItemsWedget.dart';

import '../Widgets/AppBarWidget.dart';
import '../Widgets/DrawerWidget.dart';
import '../Widgets/PopularItemsWidget.dart';
import '../Widgets/CategoriesWidget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Custom App Bar Widget
                AppBarWidget(),

                // Search
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 15,
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 10,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          const Icon(
                            CupertinoIcons.search,
                            color: Colors.red,
                          ),
                          Container(
                            height: 50,
                            width: 300,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 15,
                              ),
                              child: TextFormField(
                                decoration: const InputDecoration(
                                    hintText: "What would you like to have?",
                                    border: InputBorder.none),
                              ),
                            ),
                          ),
                          const Icon(Icons.filter_list),
                        ],
                      ),
                    ),
                  ),
                ),
                // Cetogory
                const Padding(
                  padding: EdgeInsets.only(top: 15, left: 10),
                  child: Text(
                    "Categories",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),

                // Category widget
                SizedBox(
                  height: 100,
                  child: const CategoriesWidget(),
                ),

                // Popular Items
                const Padding(
                  padding: EdgeInsets.only(top: 15, left: 10),
                  child: Text(
                    "Popular ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                // Popular Items Widget
                Container(
                  height: 235,
                  width: double.infinity,
                  child: PopularItemsWidget(),
                ),

                //Newest Items
                const Padding(
                  padding: EdgeInsets.only(top: 15, left: 10),
                  child: Text(
                    "Newest ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),

                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  height: 600,
                  width: double.infinity,
                  child: NewestItemsWidget(),
                ),
              ],
            ),
          ),
        ),
        drawer: DrawerWidget(),
        floatingActionButton: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 10,
                  offset: const Offset(0, 3),
                )
              ]),
          child: FloatingActionButton(
            onPressed: () {
              Navigator.pushNamed(context, "cartPage");
            },
            child: Icon(
              CupertinoIcons.cart,
              size: 28,
              color: Colors.red,
            ),
            backgroundColor: Colors.white,
          ),
        ),
      ),
    );
  }
}
