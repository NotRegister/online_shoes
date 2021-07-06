import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:online_shoes/model/shoes.dart';
import 'package:google_fonts/google_fonts.dart';

class CollectionsPage extends StatelessWidget {
  final Shoes shoes;
  const CollectionsPage({Key? key, required this.shoes}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(2.w, 2.h, 5.w, 1.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios_new),
                  ),
                  Center(
                    child: Text(shoes.brandName,
                        style: GoogleFonts.getFont('Lato',
                            textStyle: TextStyle(fontSize: 18.sp))),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(5.w, 0, 5.w, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 15.w),
                        width: 80.w,
                        child: Text(
                          'Nike Collections',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 28.sp),
                        ),
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                padding:
                                    EdgeInsets.fromLTRB(4.h, 6.h, 4.h, 6.h),
                                child: Text(
                                  'Running Shoes',
                                  style: TextStyle(fontSize: 19.sp),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(0, 4.h, 2.h, 0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                  ),
                                  child: Image.network(
                                    'https://designwanted.com/wp-content/uploads/2021/02/Nike-GO-Flyease-1.png',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
