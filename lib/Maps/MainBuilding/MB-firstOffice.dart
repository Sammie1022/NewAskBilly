import 'package:abigail_askbilly/Faqs/Faqshome.dart';
import 'package:abigail_askbilly/Faqs/widget/navigation_drawer_widget.dart';
import 'package:abigail_askbilly/HomePage/Homepage.dart';
import 'package:abigail_askbilly/Maps/Mapshome.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';

import '../MainBuilding.dart';

class MBfirstOffice extends StatefulWidget {
  @override
  State<MBfirstOffice> createState() => _MBfirstOfficeState();
}

class _MBfirstOfficeState extends State<MBfirstOffice> {
  var size, height, width;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
        drawer: NavigationDrawerWidget(),
        body: Container(
          height: 100.h,
          width: 100.w,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(6),
                width: 100.w,
                height: 12.h,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/paws.gif'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.menu_rounded,
                      size: 15.sp,
                    ),
                    SizedBox(
                      width: 1.w,
                    ),
                    Container(
                        padding: EdgeInsets.all(0.5.sp),
                        decoration: BoxDecoration(
                          color: HexColor('f8d00e'),
                          border: Border.all(
                            color: HexColor('230871'),
                            width: 0.3.w,
                          ),
                        ),
                        child: Text(
                          'FIRST FLOOR',
                          style: TextStyle(fontSize: 9.sp, fontFamily: 'Arial'),
                        )),
                    Container(
                        padding: EdgeInsets.all(0.5.sp),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: HexColor('230871'),
                            width: 0.3.w,
                          ),
                        ),
                        child: Text(
                          'OFFICE',
                          style: TextStyle(
                            fontSize: 9.sp,
                            fontFamily: 'Arial',
                          ),
                        )),
                    Expanded(
                      child: Container(),
                    ),
                    Image.asset('assets/logo.png'),
                  ],
                ),
              ), //TOPBAR
              Container(
                color: HexColor('f8d00e'),
                height: 2.h,
                width: 100.w,
              ),
              Expanded(
                child: Stack(
                  children: [
                    Container(
                      height: 100.h,
                      padding: EdgeInsets.symmetric(horizontal: 25.w),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                            HexColor('edf4fc'),
                            HexColor('c8d9f3')
                          ])),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 70.h,
                          width: 60.w,
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(left: 5.sp),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: HexColor('230871'),
                              width: 0.4.w,
                            ),
                          ),
                          child: Image.asset(
                            'assets/MapsPage/MB.png',
                            width: 70.w,
                            fit: BoxFit.contain,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 35.h,
                              width: 35.w,
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(left: 4.sp),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: HexColor('230871'),
                                  width: 0.4.w,
                                ),
                              ),
                              child: Image.asset(
                                'assets/MapsPage/MB.png',
                                width: 67.w,
                                fit: BoxFit.contain,
                              ),
                            ),
                            Container(
                              height: 35.h,
                              width: 35.w,
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(left: 4.sp),
                              decoration: BoxDecoration(
                                color: Colors.white70,
                                border: Border.all(
                                  color: HexColor('230871'),
                                  width: 0.4.w,
                                ),
                              ),
                              child: Text(
                                'TEXT HERE',
                                style: TextStyle(
                                  fontSize: 10.sp,
                                  fontFamily: 'Arial',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      alignment: Alignment.bottomLeft,
                      margin: EdgeInsets.only(bottom: 5),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => mainBuilding()),
                          );
                        },
                        child: Image.asset(
                          'assets/back-btn.png',
                          height: 6.h,
                          width: 6.w,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: HexColor('30408d'),
                height: 2.h,
                width: 100.w,
              ),
            ],
          ),
        ));
  }
}
