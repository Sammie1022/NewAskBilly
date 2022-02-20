import 'package:abigail_askbilly/About/Abouthome.dart';
import 'package:abigail_askbilly/Faqs/Faqshome.dart';
import 'package:abigail_askbilly/HomePage/Homepage.dart';
import 'package:abigail_askbilly/Maps/Mapshome.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';

class menuBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10.w,
      child: Drawer(
          child: Container(
        // padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 1.w),
        child: Column(
          children: [
            SizedBox(
              height: 2.h,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => homePage()),
                );
              },
              child: Container(
                margin: EdgeInsets.only(bottom: 2.h),
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: HexColor('30408d'),
                ),
                child: Column(
                  children: [
                    Container(
                      child: Icon(
                        Icons.home_outlined,
                        size: 9.h,
                        color: Colors.white,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        color: HexColor('230871'),
                      ),
                      padding: EdgeInsets.all(1.w),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'HOME',
                      style: TextStyle(fontSize: 6.sp, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => mapsHome()),
                );
              },
              child: Container(
                margin: EdgeInsets.only(bottom: 2.h),
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: HexColor('30408d'),
                ),
                child: Column(
                  children: [
                    Container(
                      child: Icon(
                        Icons.location_on_outlined,
                        size: 9.h,
                        color: Colors.white,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        color: HexColor('230871'),
                      ),
                      padding: EdgeInsets.all(1.w),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'MAPS',
                      style: TextStyle(fontSize: 6.sp, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => faqsHome()),
                );
              },
              child: Container(
                margin: EdgeInsets.only(bottom: 2.h),
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: HexColor('30408d'),
                ),
                child: Column(
                  children: [
                    Container(
                      child: Icon(
                        Icons.question_answer_outlined,
                        size: 9.h,
                        color: Colors.white,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        color: HexColor('230871'),
                      ),
                      padding: EdgeInsets.all(1.w),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'FAQs',
                      style: TextStyle(fontSize: 6.sp, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => aboutHome()),
                );
              },
              child: Container(
                margin: EdgeInsets.only(bottom: 2.h),
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: HexColor('30408d'),
                ),
                child: Column(
                  children: [
                    Container(
                      child: Icon(
                        Icons.info_outline,
                        size: 9.h,
                        color: Colors.white,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        color: HexColor('230871'),
                      ),
                      padding: EdgeInsets.all(1.w),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'ABOUT NU',
                      style: TextStyle(fontSize: 4.sp, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
