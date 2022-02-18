import 'package:abigail_askbilly/Faqs/AdmissionsOffice/AO_questionPage.dart';
import 'package:abigail_askbilly/Faqs/Faqshome.dart';
import 'package:abigail_askbilly/Faqs/widget/navigation_drawer_widget.dart';
import 'package:abigail_askbilly/HomePage/Homepage.dart';
import 'package:abigail_askbilly/LoadingPage/Loadingpage.dart';
import 'package:abigail_askbilly/Maps/Mapshome.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';

class admissionAnswer extends StatefulWidget {
  @override
  State<admissionAnswer> createState() => _admissionAnswerState();
}

class _admissionAnswerState extends State<admissionAnswer> {
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
                      'ADMISSIONS OFFICE',
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontFamily: 'Arial',
                          color: HexColor('230871')),
                    )),
                    Container(
                      margin: EdgeInsets.only(right: 10.sp),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('2nd Floor Main Building',
                              style: TextStyle(
                                  fontSize: 4.sp, color: HexColor('30408d'))),
                          Text('8:00 am - 5:00 pm',
                              style: TextStyle(
                                  fontSize: 4.sp, color: HexColor('30408d'))),
                          Text('admissions@national-u.ed.ph',
                              style: TextStyle(
                                  fontSize: 4.sp, color: HexColor('30408d'))),
                        ],
                      ),
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
                      alignment: Alignment.center,

                      // padding: EdgeInsets.only(right: 10.sp, bottom: 10.sp),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 5.sp,
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
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(55)),
                                primary: HexColor('30408d'),
                                fixedSize: Size(90.w, 8.h),
                                elevation: 5,
                                padding: EdgeInsets.all(2.sp),
                                textStyle: TextStyle(fontSize: 6.sp)),
                            child: Text(
                                '''hfsdhgsjhgfjshgdfjjsdfhsdjfgsdgfs  djsdjs  sdsdgahgsdsz sdhsdh jsdad hskjh sdStart'''),
                          ),
                          SizedBox(
                            height: 5.sp,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 60.h,
                                width: 45.w,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: HexColor('230871'),
                                    width: 0.3.w,
                                  ),
                                ),
                              ),
                              Container(
                                height: 60.h,
                                width: 45.w,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  border: Border.all(
                                    color: HexColor('230871'),
                                    width: 0.3.w,
                                  ),
                                ),
                              ),
                            ],
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
                            MaterialPageRoute(
                                builder: (context) => admissionQusetion()),
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
