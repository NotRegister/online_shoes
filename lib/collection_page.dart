import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_shoes/detail_screen.dart';
import 'package:online_shoes/widgets/favorite_button.dart';
import 'package:sizer/sizer.dart';
import 'package:online_shoes/model/shoes.dart';
import 'package:google_fonts/google_fonts.dart';

class CollectionsPage extends StatelessWidget {
  final ShoesBrand shoesBrand;
  const CollectionsPage({Key? key, required this.shoesBrand}) : super(key: key);
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
                  /* ListView.builder(
                    itemCount: shoesList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Widgeteitemshoe();
                    },
                  ), */
                  Text(shoesBrand.name,
                      style: GoogleFonts.getFont('Lato',
                          textStyle: TextStyle(fontSize: 18.sp))),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.fromLTRB(5.w, 3.h, 5.w, 2.w),
                child: GridView.count(
                  crossAxisSpacing: 5.w,
                  mainAxisSpacing: 2.h,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  childAspectRatio: .65 /* itemWidth / itemHeight */,
                  // childAspectRatio: .70,
                  crossAxisCount: 2,
                  children: shoesList.map((shoes) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
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
                                  loadingBuilder: (BuildContext context,
                                      Widget child,
                                      ImageChunkEvent? loadingProgress) {
                                    if (loadingProgress == null) {
                                      return child;
                                    }
                                    return Container(
                                      height: 20.h,
                                      child: Center(
                                        child: CircularProgressIndicator(
                                          value: loadingProgress
                                                      .expectedTotalBytes !=
                                                  null
                                              ? loadingProgress
                                                      .cumulativeBytesLoaded /
                                                  loadingProgress
                                                      .expectedTotalBytes!
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        shoes.price,
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      FavoriteButton(
                                        buttonSize: 19,
                                      ),
                                    ],
                                  ),
                                  Container(
                                    child: Text(
                                      shoes.brandName + ' ' + shoes.name,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500),
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
              ),
            ),
            /* Container(
              height: 50.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              width: 50.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/7cf0d5a5-6841-42e1-a095-e53b0d0d179e/blazer-low-77-prm-shoe-pnHzBj.png',
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
                              '20k',
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
                            'Nike KW super',
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ), */
          ],
        ),
      ),
    );
  }
}
