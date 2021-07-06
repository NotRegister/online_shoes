import 'package:flutter/material.dart';
import 'package:online_shoes/collection_page.dart';
import 'package:online_shoes/detail_screen.dart';
import 'package:online_shoes/home_page.dart';
import 'package:online_shoes/intro_page.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        home: HomePage(),
      );
    });
  }
}
