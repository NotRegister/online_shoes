import 'package:flutter/material.dart';
import 'package:online_shoes/model/shoes.dart';
import 'package:online_shoes/widgets/favorite_button.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailScreen extends StatelessWidget {
  final Shoes shoes;
  DetailScreen({
    Key? key,
    required this.shoes,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white.withOpacity(0.9),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Stack(
            fit: StackFit.loose,
            children: [
              Align(
                // alignment: Alignment.center,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 6.w),
                  width: 60.h,
                  height: 48.h,
                  child: Image.network(shoes.imageURLs),
                ),
              ),
              Column(
                children: [
                  SafeArea(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 1.w, top: 1.h),
                          child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.arrow_back_ios_new,
                              size: 20,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 1.h, right: 2.w),
                          child: FavoriteButton(
                            buttonSize: 25,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          Expanded(
            flex: 3,
            child: Container(
              padding: EdgeInsets.fromLTRB(7.w, 6.h, 7.w, 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: Offset(0, 0))
                ],
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              shoes.brandName + ' ' + shoes.name,
                              style: TextStyle(
                                  fontSize: 16.sp, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            Text(
                              shoes.collection,
                              style: TextStyle(
                                  color: Colors.grey.withOpacity(0.7),
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          alignment: Alignment.centerRight,
                          child: Text(
                            '2.5 Juta',
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 19.sp),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Text(
                    'Ecommerce',
                    style:
                        TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size.zero,
                          padding: EdgeInsets.all(0),
                          primary: Colors.white,
                        ),
                        onPressed: () {
                          const url =
                              'https://www.tokopedia.com/nikeatings/cv5708-010-nike-savaleos-original-weightlifting-shoe?src=topads';
                          launchURL(url);
                        },
                        child: Container(
                          child: Image.network(
                            'https://assets.tokopedia.net/assets-tokopedia-lite/v2/arael/kratos/36c1015e.png',
                            width: 7.h,
                            height: 7.h,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 3.w,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size.zero,
                          padding: EdgeInsets.all(0),
                          primary: Colors.white,
                        ),
                        onPressed: () {},
                        child: Container(
                          child: Image.network(
                            'https://shopeesgblog.com/wp-content/uploads/2019/03/512x512-logo.png',
                            width: 7.h,
                            height: 7.h,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
