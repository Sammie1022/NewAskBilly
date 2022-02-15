import 'package:abigail_askbilly/Faqs/Faqshome.dart';
import 'package:abigail_askbilly/Faqs/widget/navigation_drawer_widget.dart';
import 'package:abigail_askbilly/HomePage/Homepage.dart';
import 'package:abigail_askbilly/LoadingPage/Loadingpage.dart';
import 'package:abigail_askbilly/Maps/Mapshome.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';

class aboutHome extends StatefulWidget {
  @override
  State<aboutHome> createState() => _aboutHomeState();
}

class _aboutHomeState extends State<aboutHome> {
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
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(left: 1.5.sp),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => mapsHome()),
                          );
                        },
                        child: Image.asset(
                          'assets/AboutNUPage/TopBtn/AboutNU.png',
                          height: 15.h,
                          width: 15.w,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(left: 1.5.sp),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => mapsHome()),
                          );
                        },
                        child: Image.asset(
                          'assets/AboutNUPage/TopBtn/Academics.png',
                          height: 15.h,
                          width: 15.w,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(left: 1.5.sp),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => mapsHome()),
                          );
                        },
                        child: Image.asset(
                          'assets/AboutNUPage/TopBtn/Admissions.png',
                          height: 15.h,
                          width: 15.w,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(left: 1.5.sp),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => mapsHome()),
                          );
                        },
                        child: Image.asset(
                          'assets/AboutNUPage/TopBtn/Careers.png',
                          height: 15.h,
                          width: 15.w,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(left: 1.5.sp),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => mapsHome()),
                          );
                        },
                        child: Image.asset(
                          'assets/AboutNUPage/TopBtn/ContactUs.png',
                          height: 15.h,
                          width: 15.w,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
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
                    Container(
                      margin: EdgeInsets.only(left: 14.sp, top: 9.sp),
                      // padding: EdgeInsets.only(right: 10.sp, bottom: 10.sp),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              'About',
                              style: TextStyle(
                                  fontSize: 12.sp, color: HexColor('230871')),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 13.sp, top: 14.sp),
                          padding: EdgeInsets.all(2.sp),
                          color: Colors.white,
                          height: 47.h,
                          width: 25.w,
                          child: SingleChildScrollView(
                              child: Column(
                            children: [
                              SizedBox(
                                height: 8.h,
                                width: 24.w,
                                child: ElevatedButton(
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
                                          vertical: 1.h, horizontal: 1.w),
                                      textStyle: TextStyle(fontSize: 6.sp)),
                                  child: Text('Brief History'),
                                ),
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              SizedBox(
                                height: 8.h,
                                width: 24.w,
                                child: ElevatedButton(
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
                                          vertical: 1.h, horizontal: 1.w),
                                      textStyle: TextStyle(fontSize: 6.sp)),
                                  child: Text('Mission and Vision'),
                                ),
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              SizedBox(
                                height: 8.h,
                                width: 24.w,
                                child: ElevatedButton(
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
                                          vertical: 1.h, horizontal: 1.w),
                                      textStyle: TextStyle(fontSize: 6.sp)),
                                  child: Text('Core Values'),
                                ),
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              SizedBox(
                                height: 8.h,
                                width: 24.w,
                                child: ElevatedButton(
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
                                          vertical: 1.h, horizontal: 1.w),
                                      textStyle: TextStyle(fontSize: 6.sp)),
                                  child: Text('Gain'),
                                ),
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              SizedBox(
                                height: 8.h,
                                width: 24.w,
                                child: ElevatedButton(
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
                                          vertical: 1.h, horizontal: 1.w),
                                      textStyle: TextStyle(fontSize: 6.sp)),
                                  child: Text(
                                    'QuaWORlity Policy',
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                              ),
                            ],
                          )),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 5.sp, top: 26.sp),
                          height: 55.h,
                          width: 65.w,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: HexColor('230871'),
                              width: 0.4.w,
                            ),
                          ),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            padding: EdgeInsets.all(3.sp),
                            child: Text('''University Location
The University can easily be reached from any part of the City of Manila by using the ordinary means of transportation.

From Quiapo, one may take jeepney plying the Quiapo Lealtad route at Barbosa Street in Quiapo and then alight at a point on F. Jhocson: if preferred, one may take Balic-Balic bound jeepney and alight at the corner of G. Tuazon and M. F. Jhocson Streets.

The University may also be reached by way of Espana Street from points North or Northwest through Cayco Street, then turn right through F. Jhocson Street to M. F. Jhocson Street; from points Northwest through Earnshaw Street, turn left through Cayco then right through F. Jhocson to M. F. Jhocson.

From Antipolo, Cainta, Marikina, Pasig and surrounding communities, the University can be reached by taking the LRT Marikina Santolan Station and alight at the Legarda Station, then proceed towards the Sampaloc church, turn right to F. Jhocson Street.'''),
                          ),
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
