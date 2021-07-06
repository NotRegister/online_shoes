import 'package:flutter/material.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import 'package:online_shoes/collection_page.dart';
import 'package:online_shoes/detail_screen.dart';
import 'package:online_shoes/model/shoes.dart';
import 'package:online_shoes/widgets/favorite_button.dart';
import 'package:sizer/sizer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final itemWidth = MediaQuery.of(context).size.width / 2;
    final itemHeight = 300;

    return Scaffold(
      body: Column(
        children: [
          SafeArea(
            child: Container(
              child: SearchBar(),
            ),
          ),
          Expanded(
            flex: 2,
            child: NotificationListener<OverscrollIndicatorNotification>(
              onNotification: (OverscrollIndicatorNotification? overscroll) {
                overscroll!.disallowGlow();
                return true;
              },
              child: SingleChildScrollView(
                // physics: BouncingScrollPhysics(),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(5.w, 0, 5.w, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      CardNew(),
                      SizedBox(
                        height: 3.h,
                      ),
                      BrandCollection(),
                      SizedBox(
                        height: 2.h,
                      ),
                      Text(
                        'Selected for you',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 15.sp),
                      ),
                      /* SizedBox(
                        height: 1.w,
                      ), */
                      ShoesGridCount(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ShoesGridCount extends StatelessWidget {
  const ShoesGridCount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 3.h, top: 0),
      child: GridView.count(
        crossAxisSpacing: 5.w,
        mainAxisSpacing: 2.h,
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        childAspectRatio: .65 /* itemWidth / itemHeight */,
        // childAspectRatio: .70,
        crossAxisCount: 2,
        children: ShoesList.map((shoes) {
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(
                  shoes: shoes,
                );
              }));
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              width: 20.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        shoes.imageURLs,
                        loadingBuilder: (BuildContext context, Widget child,
                            ImageChunkEvent? loadingProgress) {
                          if (loadingProgress == null) {
                            return child;
                          }
                          return Container(
                            height: 20.h,
                            child: Center(
                              child: CircularProgressIndicator(
                                value: loadingProgress.expectedTotalBytes !=
                                        null
                                    ? loadingProgress.cumulativeBytesLoaded /
                                        loadingProgress.expectedTotalBytes!
                                    : null,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              shoes.price,
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600),
                            ),
                            FavoriteButton(
                              buttonSize: 19,
                            ),
                          ],
                        ),
                        Container(
                          child: Text(
                            shoes.brandName + ' ' + shoes.name,
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

class CardNew extends StatelessWidget {
  const CardNew({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20.h,
      width: 90.w,
      decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.topRight,
            colors: [Colors.black87, Colors.black45],
          ),
          borderRadius: BorderRadius.circular(15)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.only(left: 7.w, top: 5.h),
            width: 45.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Nike. Just Du It',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 8.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  'A HERITAGE OF SPEED',
                  style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 1.h),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
              child: Image.asset('assets/images/sportwear.png'),
            ),
          )
        ],
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(5.w, 3.h, 5.w, 4.h),
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black12),
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
        decoration: InputDecoration(
          icon: Icon(
            Icons.search_rounded,
            size: 25,
            color: Colors.black26,
          ),
          hintText: 'What are you looking for?',
          hintStyle: TextStyle(color: Colors.black26),
          border: InputBorder.none,
        ),
      ),
    );
  }
}

//! belum liat
class BrandCollection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90.w,
      height: 13.h,
      // color: Colors.red.withOpacity(0.4),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: ShoesBrandList.length,
        itemBuilder: (BuildContext context, int index) {
          final ShoesBrand brand = ShoesBrandList[index];
          final Shoes shoes = ShoesList[index];
          return Padding(
            padding: EdgeInsets.only(right: 4.w),
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return CollectionsPage(
                    shoes: shoes,
                  );
                }));
              },
              child: Container(
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 8.h,
                          width: 8.h,
                          padding: EdgeInsets.all(2.h),
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                brand.imageURLs,
                                color: Colors.black,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Text(
                          brand.name,
                          style: TextStyle(fontSize: 12.sp),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
