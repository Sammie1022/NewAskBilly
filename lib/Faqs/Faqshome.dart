import 'package:abigail_askbilly/Faqs/AdmissionsOffice/AO_questionPage.dart';
import 'package:abigail_askbilly/Faqs/widget/button_widget.dart';
import 'package:abigail_askbilly/Faqs/widget/navigation_drawer_widget.dart';
import 'package:abigail_askbilly/HomePage/Homepage.dart';
import 'package:abigail_askbilly/LoadingPage/Loadingpage.dart';
import 'package:abigail_askbilly/MenuBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';

class faqsHome extends StatefulWidget {
  @override
  State<faqsHome> createState() => _faqsHomeState();
}

class _faqsHomeState extends State<faqsHome> {
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
                    Expanded(
                        child: Text(
                      'OFFICES',
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
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                            HexColor('edf4fc'),
                            HexColor('c8d9f3')
                          ])),
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 5.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
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
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => faqsHome()),
                              );
                            },
                            child: Image.asset(
                                'assets/FAQsPage/images/buttons/SDAO-btn.png',
                                width: 13.w,
                                fit: BoxFit.contain),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => faqsHome()),
                              );
                            },
                            child: Image.asset(
                                'assets/FAQsPage/images/buttons/GSO-btn.png',
                                width: 13.w,
                                fit: BoxFit.contain),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => faqsHome()),
                              );
                            },
                            child: Image.asset(
                                'assets/FAQsPage/images/buttons/HEALTH-btn.png',
                                width: 13.w,
                                fit: BoxFit.contain),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => faqsHome()),
                              );
                            },
                            child: Image.asset(
                                'assets/FAQsPage/images/buttons/ITRO-btn.png',
                                width: 13.w,
                                fit: BoxFit.contain),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => faqsHome()),
                              );
                            },
                            child: Image.asset(
                                'assets/FAQsPage/images/buttons/LRC-btn.png',
                                width: 13.w,
                                fit: BoxFit.contain),
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
                            MaterialPageRoute(builder: (context) => homePage()),
                          );
                        },
                        child: Image.asset(
                          'assets/back-btn.png',
                          height: 10.h,
                          width: 10.w,
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
