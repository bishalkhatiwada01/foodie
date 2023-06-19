import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodie/Pages/Auth/SignUpPage.dart';

import 'package:sizer/sizer.dart';
import 'package:flutter/services.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({super.key});

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  TextEditingController textEditingController = TextEditingController();

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
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 40.sp, left: 30.sp, right: 30.sp),
            child: Column(
              children: [
                SizedBox(
                  height: 4.h,
                ),
                Center(
                  child: Text(
                    'Enter Verification Code',
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
                Form(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 7.h,
                        width: 15.w,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: TextFormField(
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          onSaved: (pin1) {},
                          decoration: const InputDecoration(
                            hintText: "0",
                            hintStyle: TextStyle(fontSize: 25),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.all(16.0),
                          ),
                          style: Theme.of(context).textTheme.bodyLarge,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                      Container(
                        height: 7.h,
                        width: 15.w,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: TextFormField(
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          onSaved: (pin2) {},
                          decoration: const InputDecoration(
                            hintText: "0",
                            hintStyle: TextStyle(fontSize: 25),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.all(16.0),
                          ),
                          style: Theme.of(context).textTheme.bodyLarge,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                      Container(
                        height: 7.h,
                        width: 15.w,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: TextFormField(
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          onSaved: (pin3) {},
                          decoration: const InputDecoration(
                            hintText: "0",
                            hintStyle: TextStyle(fontSize: 25),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.all(16.0),
                          ),
                          style: Theme.of(context).textTheme.bodyLarge,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                      Container(
                        height: 7.h,
                        width: 15.w,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: TextFormField(
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          onSaved: (pin4) {},
                          decoration: const InputDecoration(
                            hintText: "0",
                            hintStyle: TextStyle(fontSize: 25),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.all(16.0),
                          ),
                          style: Theme.of(context).textTheme.bodyLarge,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("If you didn't recieve a code,"),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Resend",
                          style: TextStyle(
                            color: Color.fromARGB(255, 81, 18, 163),
                          ),
                        ))
                  ],
                ),
                SizedBox(
                  height: 1.h,
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
                      onPressed: () {},
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
                        width: 8.w,
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
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => SignupPage()));
                      },
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
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                      ),
                      child: Text(
                        'Sign up',
                        style:
                            TextStyle(fontSize: 12.sp, color: Colors.black45),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
