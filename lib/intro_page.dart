import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
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
            Expanded(
              flex: 3,
              child: Image.asset('assets/images/converseSkate.png'),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(50, 10, 50, 20),
              // height: 150,
              // color: Colors.red,
              child: Column(
                children: [
                  Text(
                    'Let\'s improve your appearance',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lato(
                      textStyle: TextStyle(
                        fontSize: 30.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'find local shoes to support your daily activities',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lato(
                      textStyle: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                          fontSize: 14.sp),
                    ),
                  ),
                ],
              ),
            ),
            /* SizedBox(
              height: 30,
            ), */
            Container(
              // ! Button getStarted
              height: 80,
              child: Padding(
                padding: const EdgeInsets.only(left: 80, right: 80),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: () {},
                  child: Center(
                    child: Text(
                      'Get Started',
                      style: GoogleFonts.lato(
                        textStyle: TextStyle(
                          color: Colors.grey[850],
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 70,
              child: Text(
                'Width: ${screenSize.width.toStringAsFixed(0)} | height: ${screenSize.height.toStringAsFixed(0)}',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
