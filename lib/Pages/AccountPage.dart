import 'package:flutter/material.dart';
import 'package:foodie/Pages/ProfilePage.dart';
import 'package:foodie/Widgets/AppBarWidget.dart';
import 'package:foodie/Widgets/CustomListTile.dart';

import 'package:sizer/sizer.dart';

class AccountPage extends StatelessWidget {
  final searchController = TextEditingController();
  final Color mainColor = const Color(0xffD40909);

  AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 1.4.h),
          children: [
            AppBarWidget(),
            const SizedBox(
              height: 15,
            ),
            PreferredSize(
              preferredSize: const Size.fromHeight(180),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 1.w),
                child: Container(
                  height: 22.h,
                  width: double.infinity,
                  child: Padding(
                    padding: EdgeInsets.all(2.w),
                    child: Column(
                      children: [
                        Container(
                          height: 12.h,
                          width: 25.w,
                          decoration: BoxDecoration(
                              color: mainColor, shape: BoxShape.circle),
                          child: Icon(
                            Icons.person,
                            color: Colors.white,
                            size: 20.w,
                          ),
                        ),
                        Text(
                          'Bishal Khatiwada',
                          style: TextStyle(
                              fontSize: 16.sp, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '98-xxxxxx | test@gmail.com',
                          style: TextStyle(
                            letterSpacing: 1,
                            color: Colors.blueGrey,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(2.w),
              width: double.infinity,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'ACCOUNT',
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          // ignore: non_constant_identifier_names
                          builder: (Context) => const ProfilePage()));
                    },
                    child: customListTile(
                      title: 'Profile',
                      leadingIcon: Icons.person,
                    ),
                  ),
                  customListTile(
                    title: 'Saved Address',
                    leadingIcon: Icons.star,
                  ),
                  customListTile(
                    title: 'Notification',
                    leadingIcon: Icons.notifications,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(2.w),
              width: double.infinity,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'OFFERS',
                    style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500),
                  ),
                  customListTile(
                    title: 'Promos',
                    leadingIcon: Icons.person,
                  ),
                  customListTile(
                    title: 'Get Discounts',
                    leadingIcon: Icons.star,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(2.w),
              width: double.infinity,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'SETTINGS',
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  customListTile(
                    title: 'Themes',
                    leadingIcon: Icons.person,
                  ),
                  customListTile(
                    title: 'Privacy',
                    leadingIcon: Icons.privacy_tip,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
