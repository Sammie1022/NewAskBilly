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

import '../../MenuBar.dart';

class admissionAnswer extends StatefulWidget {
  @override
  State<admissionAnswer> createState() => _admissionAnswerState();
}

class _admissionAnswerState extends State<admissionAnswer> {
  var _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        drawer: menuBar(),
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
                    GestureDetector(
                      child: Icon(
                        Icons.menu_rounded,
                        size: 10.h,
                      ),
                      onTap: () {
                        _scaffoldKey.currentState?.openDrawer();
                      },
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
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              margin: EdgeInsets.only(
                                  bottom: 1.h, left: 5.w, right: 5.w),
                              padding: EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50.0),
                                  color: HexColor('30408d'),
                                  boxShadow: [
                                    BoxShadow(
                                        offset: Offset(0, 3),
                                        color: Colors.blueGrey,
                                        spreadRadius: .8,
                                        blurRadius: .5)
                                  ]),
                              child: Row(
                                children: [
                                  Container(
                                    // ito yung kulay red
                                    child: Text(
                                      '01',
                                      style: TextStyle(
                                          fontSize: 6.sp, color: Colors.white),
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
                                    'this is a question',
                                    style: TextStyle(
                                        fontSize: 6.sp, color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
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
                                  color: Colors.white,
                                  border: Border.all(
                                    color: HexColor('230871'),
                                    width: 0.3.w,
                                  ),
                                ),
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Text(
                                        '''Honey, why you calling me so late?
It's kinda hard to talk right now
Honey, why you crying, is everything okay?
I gotta whisper 'cause I can't be too loud
Well, my girl's in the next room
Sometimes I wish she was you
I guess we never really moved on
It's really good to hear your voice saying my name
It sounds so sweet
Coming from the lips of an angel
Hearing those words, it makes me weak
And I never wanna say goodbye
But, girl, you make it hard to be faithful
With the lips of an angel
It's funny that you're calling me tonight
And, yes, I've dreamt of you too
And does he know you're talking to me?
Will it start a fight?
No, I don't think she has a clue
Well, my girl's in the next room
Sometimes I wish she was you
I guess we never really moved on
It's really good to hear your voice saying my name
It sounds so sweet
Coming from the lips of an angel
Hearing those words, it makes me weak
And I never wanna say goodbye
But, girl, you make it hard to be faithful
With the lips of an angel
It's really good to hear your voice saying my name
It sounds so sweet
Coming from the lips of an angel
Hearing those words, it makes me weak
And I never wanna say goodbye
But, girl, you make it hard to be faithful
With the lips of an angel
And I never wanna say goodbye
But, girl, you make it hard to be faithful
With the lips of an angel
Honey, why you calling me so late?''',
                                        style: TextStyle(fontSize: 5.sp),
                                      ),
                                      Image.asset('assets/logo.png'),
                                    ],
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
