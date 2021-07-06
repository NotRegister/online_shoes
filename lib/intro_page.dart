import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_shoes/home_page.dart';
import 'package:online_shoes/model/shoes.dart';
import 'package:sizer/sizer.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[850],
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Flexible(
              flex: 3,
              child: Container(
                padding: EdgeInsets.only(top: 4.h, bottom: 5.h),
                child: Align(
                  child: Container(
                    child: Image.asset(
                      'assets/images/converseSkate.png',
                      /* width: 50.h,
                      height: 53.h, */
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(15.w, 1.h, 15.w, 1.h),
              // padding: EdgeInsets.fromLTRB(50, 10, 50, 20),
              // height: 150,
              // color: Colors.red,
              child: Column(
                children: [
                  Text(
                    'Let\'s improve your appearance',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lato(
                      textStyle: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Text(
                    'find local shoes to support your daily activities',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lato(
                      textStyle: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                          fontSize: 10.sp),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 4.h,
              child: Text(
                'Width: ${screenSize.width.toStringAsFixed(0)} | height: ${screenSize.height.toStringAsFixed(0)}',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.white.withOpacity(0.2),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                // ! Button getStarted
                height: 14.w,
                width: 55.w,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                    );
                  },
                  child: Center(
                    child: Text(
                      'Get Started',
                      style: GoogleFonts.lato(
                        textStyle: TextStyle(
                          color: Colors.grey[850],
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
