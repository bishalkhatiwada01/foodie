import 'package:flutter/material.dart';
import 'package:foodie/Auth/OtpPage.dart';

import 'package:sizer/sizer.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Forgot Password",
          style: TextStyle(
              color: Colors.black,
              fontFamily: 'Montserrat',
              fontStyle: FontStyle.normal),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(0, 250, 250, 250),
        elevation: 0,
        leading: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 3.w),
              child: Container(
                width: 8.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.black, width: 2.0),
                ),
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                    size: 5.w,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 40.sp, left: 30.sp, right: 30.sp),
          child: Column(
            children: [
              SizedBox(
                height: 4.h,
              ),
              Center(
                child: Text(
                  'Enter Email Address',
                  style: TextStyle(
                    color: const Color.fromRGBO(68, 68, 68, 1),
                    fontFamily: 'Montserrat',
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: '     example@gmail.com',
                    hintStyle: TextStyle(
                        color: Colors.black45, fontFamily: 'Montserrat'),
                    contentPadding: EdgeInsets.all(16.0),
                  ),
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Back to login",
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.black38,
                      fontSize: 12.sp),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              SizedBox(
                height: 6.h,
                width: double.infinity,
                child: ClipRRect(
                  borderRadius: const BorderRadius.horizontal(
                    left: Radius.circular(30.0),
                    right: Radius.circular(30.0),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => OtpPage()));
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        const Color.fromARGB(255, 81, 18, 163),
                      ),
                    ),
                    child: Text(
                      'Send OTP',
                      style: TextStyle(fontSize: 12.sp),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                "or",
                style: TextStyle(
                    fontSize: 12.sp,
                    color: const Color.fromARGB(255, 81, 18, 163)),
              ),
              SizedBox(
                height: 1.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    elevation: 0,
                    child: Image.asset(
                      'images/facebook.png',
                      width: 12.w,
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Card(
                    elevation: 0,
                    child: Image.asset(
                      'images/g.svg.png',
                      width: 8.w,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8.h,
              ),
              const Text(
                "Do you have an account?",
                style: TextStyle(color: Colors.black54),
              ),
              SizedBox(
                height: 2.h,
              ),
              SizedBox(
                height: 6.h,
                width: double.infinity,
                child: ClipRRect(
                  borderRadius: const BorderRadius.horizontal(
                    left: Radius.circular(30.0),
                    right: Radius.circular(30.0),
                  ),
                  child: OutlinedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      side: MaterialStateProperty.all(
                        const BorderSide(
                          color: Colors.black,
                          width: 1,
                        ),
                      ),
                      shape: MaterialStateProperty.all(
                        const RoundedRectangleBorder(
                          borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(30.0),
                            right: Radius.circular(30.0),
                          ),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                    ),
                    child: Text(
                      'Sign up',
                      style: TextStyle(
                          fontSize: 12.sp,
                          color: Colors.black45,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
