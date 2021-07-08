import 'package:flutter/material.dart';
import 'package:online_shoes/collection_page.dart';
import 'package:online_shoes/model/shoes.dart';
import 'package:sizer/sizer.dart';
import 'package:google_fonts/google_fonts.dart';

var selectedBrand;
get selectedBrandShoes {
  shoesList.where((shoes) => shoes.brandName == selectedBrand);
}

class BrandCollectionButton extends StatefulWidget {
  const BrandCollectionButton({Key? key}) : super(key: key);

  @override
  _BrandCollectionButtonState createState() => _BrandCollectionButtonState();
}

class _BrandCollectionButtonState extends State<BrandCollectionButton> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          //! Nike button
          onTap: () {
            setState(() {
              selectedBrand = 'Nike';
            });
          },
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 8.h,
                  height: 8.h,
                  padding: EdgeInsets.all(2.h),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    child: Image.asset('assets/images/logos/nike.png'),
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  'Nike',
                  style: GoogleFonts.getFont(
                    'Lato',
                    textStyle: TextStyle(
                      fontSize: 12.sp,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(width: 5.w),
        InkWell(
          //! Reebok button
          onTap: () {},
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 8.h,
                  height: 8.h,
                  padding: EdgeInsets.all(2.h),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    child: Image.asset('assets/images/logos/reebok.png'),
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  'Reebok',
                  style: GoogleFonts.getFont(
                    'Lato',
                    textStyle: TextStyle(
                      fontSize: 12.sp,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(width: 5.w),
        InkWell(
          //! Adidas button
          onTap: () {},
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 8.h,
                  height: 8.h,
                  padding: EdgeInsets.all(2.h),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    child: Image.asset('assets/images/logos/adidas.png'),
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  'Adidas',
                  style: GoogleFonts.getFont(
                    'Lato',
                    textStyle: TextStyle(
                      fontSize: 12.sp,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(width: 5.w),
        InkWell(
          //! Skecers button
          onTap: () {},
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 8.h,
                  height: 8.h,
                  padding: EdgeInsets.all(2.h),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    child: Image.asset('assets/images/logos/skechers.png'),
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  'Skecers',
                  style: GoogleFonts.getFont(
                    'Lato',
                    textStyle: TextStyle(
                      fontSize: 12.sp,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
