import 'package:abigail_askbilly/Faqs/Faqshome.dart';
import 'package:abigail_askbilly/Faqs/widget/navigation_drawer_widget.dart';
import 'package:abigail_askbilly/HomePage/Homepage.dart';
import 'package:abigail_askbilly/LoadingPage/Loadingpage.dart';
import 'package:abigail_askbilly/Maps/Mapshome.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';
import 'MainBuilding.dart';

class mainBuilding extends StatefulWidget {
  @override
  State<mainBuilding> createState() => _mainBuildingState();
}

class _mainBuildingState extends State<mainBuilding> {
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
                    Expanded(
                        child: Text(
                      'MAIN BUILDING',
                      style: TextStyle(fontSize: 12.sp, fontFamily: 'Arial'),
                    )),
                    Image.asset('assets/logo.png'),
                  ],
                ),
              ),
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
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(bottom: 10, left: 25),
                      child: Image.asset(
                        'assets/MapsPage/MB.png',
                        width: 67.w,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      margin: EdgeInsets.only(
                        right: 10.sp,
                      ),
                      // padding: EdgeInsets.only(right: 10.sp, bottom: 10.sp),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 0.2.h,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => loadingPage()),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                                primary: HexColor('30408d'),
                                elevation: 5,
                                padding: EdgeInsets.symmetric(
                                    vertical: 1.h, horizontal: 2.w),
                                textStyle: TextStyle(fontSize: 5.sp)),
                            child: Text('1ST FLOOR'),
                          ),
                          SizedBox(
                            height: 0.5.h,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => loadingPage()),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                                primary: HexColor('30408d'),
                                elevation: 5,
                                padding: EdgeInsets.symmetric(
                                    vertical: 1.h, horizontal: 2.w),
                                textStyle: TextStyle(fontSize: 5.sp)),
                            child: Text('2ND FLOOR'),
                          ),
                          SizedBox(
                            height: 0.5.h,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => loadingPage()),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                                primary: HexColor('30408d'),
                                elevation: 5,
                                padding: EdgeInsets.symmetric(
                                    vertical: 1.h, horizontal: 2.w),
                                textStyle: TextStyle(fontSize: 5.sp)),
                            child: Text('3RD FLOOR'),
                          ),
                          SizedBox(
                            height: 0.5.h,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => loadingPage()),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                                primary: HexColor('30408d'),
                                elevation: 5,
                                padding: EdgeInsets.symmetric(
                                    vertical: 1.h, horizontal: 2.w),
                                textStyle: TextStyle(fontSize: 5.sp)),
                            child: Text('4TH FLOOR'),
                          ),
                          SizedBox(
                            height: 0.5.h,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => loadingPage()),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                                primary: HexColor('30408d'),
                                elevation: 5,
                                padding: EdgeInsets.symmetric(
                                    vertical: 1.h, horizontal: 2.w),
                                textStyle: TextStyle(fontSize: 5.sp)),
                            child: Text('5TH FLOOR'),
                          ),
                          SizedBox(
                            height: 0.5.h,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => loadingPage()),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                                primary: HexColor('30408d'),
                                elevation: 5,
                                padding: EdgeInsets.symmetric(
                                    vertical: 1.h, horizontal: 2.w),
                                textStyle: TextStyle(fontSize: 5.sp)),
                            child: Text('6TH FLOOR'),
                          ),
                          SizedBox(
                            height: 0.5.h,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => loadingPage()),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                                primary: HexColor('30408d'),
                                elevation: 5,
                                padding: EdgeInsets.symmetric(
                                    vertical: 1.h, horizontal: 2.w),
                                textStyle: TextStyle(fontSize: 5.sp)),
                            child: Text('7TH FLOOR'),
                          ),
                          SizedBox(
                            height: 0.5.h,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => loadingPage()),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                                primary: HexColor('30408d'),
                                elevation: 5,
                                padding: EdgeInsets.symmetric(
                                    vertical: 1.h, horizontal: 2.w),
                                textStyle: TextStyle(fontSize: 5.sp)),
                            child: Text('8TH FLOOR'),
                          ),
                          SizedBox(
                            height: 0.2.h,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomLeft,
                      margin: EdgeInsets.only(bottom: 5),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => mapsHome()),
                          );
                        },
                        child: Image.asset(
                          'assets/back-btn.png',
                          height: 7.h,
                          width: 7.w,
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
