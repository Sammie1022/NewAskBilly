import 'package:abigail_askbilly/About/Abouthome.dart';
import 'package:abigail_askbilly/About/ContactUs.dart';
import 'package:abigail_askbilly/Faqs/Faqshome.dart';
import 'package:abigail_askbilly/Faqs/widget/navigation_drawer_widget.dart';
import 'package:abigail_askbilly/HomePage/Homepage.dart';
import 'package:abigail_askbilly/LoadingPage/Loadingpage.dart';
import 'package:abigail_askbilly/Maps/Mapshome.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';

class admissionAbout extends StatefulWidget {
  @override
  State<admissionAbout> createState() => _admissionAboutState();
}

class _admissionAboutState extends State<admissionAbout> {
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
                            MaterialPageRoute(
                                builder: (context) => aboutHome()),
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
                            MaterialPageRoute(
                                builder: (context) => aboutHome()),
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
                            MaterialPageRoute(
                                builder: (context) => admissionAbout()),
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
                            MaterialPageRoute(
                                builder: (context) => contactUs()),
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
                              'Admissions',
                              style: TextStyle(
                                  fontSize: 12.sp, color: HexColor('230871')),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 5.sp, top: 26.sp),
                          height: 63.h,
                          width: 80.w,
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
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'Freshmen',
                                    style: TextStyle(
                                        fontSize: 8.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'Requirements',
                                    style: TextStyle(
                                      fontSize: 6.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    margin:
                                        EdgeInsets.only(left: 4.sp, top: 2.sp),
                                    child: Text(
                                      '''
• Grade 12 Report Card
• Certificate of Good Moral Character
• Photocopy of the NSO Birth Certificate
• For Passers of Philippine Educational Placement Test (PEPT) and Alternative Learning System Accreditation and Equivalency (ALS A&E)
• Certificate of Passing
• Certificate of Rating
• Photocopy of Diploma (For ALS A&E passers)
• Recent two (2) pieces 2×2 colored ID Pictures
• For graduates of 2015 and below – Original Form 138 (Report Card)''',
                                      style: TextStyle(
                                        fontSize: 5.sp,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 4.sp),
                                  color: HexColor('f8d00e'),
                                  height: 0.5.h,
                                  width: 100.w,
                                ),
                                SizedBox(
                                  height: 2.h,
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'Transferees',
                                    style: TextStyle(
                                        fontSize: 8.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'Requirements',
                                    style: TextStyle(
                                      fontSize: 6.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    margin:
                                        EdgeInsets.only(left: 4.sp, top: 2.sp),
                                    child: Text(
                                      '''
• Honorable Dismissal / Transfer Credentials
• Official Transcript of Records (TOR)/ Scholastic Records
• Certificate of Good Moral Character
• Course Description of courses taken and passed
• Photocopy of the NSO Birth Certificate
• Recent two (2) pieces 2×2 colored ID Pictures''',
                                      style: TextStyle(
                                        fontSize: 5.sp,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 4.sp),
                                  color: HexColor('f8d00e'),
                                  height: 0.5.h,
                                  width: 100.w,
                                ),
                                SizedBox(
                                  height: 2.h,
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'Cross-Enrollee',
                                    style: TextStyle(
                                        fontSize: 8.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'Requirements',
                                    style: TextStyle(
                                      fontSize: 6.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    margin:
                                        EdgeInsets.only(left: 4.sp, top: 2.sp),
                                    child: Text(
                                      '''
• Cross enroll permit from your school signed by the Registrar’s Office
• Photocopy of the NSO Birth Certificate
• Recent two (2) pieces 2×2 colored ID Pictures''',
                                      style: TextStyle(
                                        fontSize: 5.sp,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 4.sp),
                                  color: HexColor('f8d00e'),
                                  height: 0.5.h,
                                  width: 100.w,
                                ),
                                SizedBox(
                                  height: 2.h,
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'International Students',
                                    style: TextStyle(
                                        fontSize: 8.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'Requirements',
                                    style: TextStyle(
                                      fontSize: 6.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    margin:
                                        EdgeInsets.only(left: 4.sp, top: 2.sp),
                                    child: Text(
                                      '''
• Authenticated High School credentials / Form 138 / Transcript of Records
• Authenticated Certificate of Good Moral Character from the School / Police
• Clearance from the country of origin/departure
• Authenticated Certificate of Graduation / Copy of Diploma
• Authenticated Birth Certificate
• Honorable Dismissal / Transfer Credentials (for Transferees)
• Photocopy of Passport, updated Student Visa and Alien Certificate of Registration (ACR)
• Recent two (2) pieces 2×2 colored ID Pictures''',
                                      style: TextStyle(
                                        fontSize: 5.sp,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 4.sp),
                                  color: HexColor('f8d00e'),
                                  height: 0.5.h,
                                  width: 100.w,
                                ),
                                SizedBox(
                                  height: 2.h,
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'Graduates of NU',
                                    style: TextStyle(
                                        fontSize: 8.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'Requirements',
                                    style: TextStyle(
                                      fontSize: 6.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    margin:
                                        EdgeInsets.only(left: 4.sp, top: 2.sp),
                                    child: Text(
                                      '''
• Photocopy of Official Transcript of Records
• Photocopy of Diploma
• Photocopy of the NSO Birth Certificate
• Photocopy of the Marriage Certificate
• Recent two (2) pieces 2×2 colored ID Pictures''',
                                      style: TextStyle(
                                        fontSize: 5.sp,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 4.sp),
                                  color: HexColor('f8d00e'),
                                  height: 0.5.h,
                                  width: 100.w,
                                ),
                                SizedBox(
                                  height: 2.h,
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'Non-Graduates of NU',
                                    style: TextStyle(
                                        fontSize: 8.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'Requirements',
                                    style: TextStyle(
                                      fontSize: 6.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    margin:
                                        EdgeInsets.only(left: 4.sp, top: 2.sp),
                                    child: Text(
                                      '''
• Official Transcript of Records (TOR)/ Scholastic Records
• Honorable Dismissal / Transfer Credentials
• Photocopy of Diploma
• Course Description of courses taken and passed
• Photocopy of the NSO Birth Certificate
• Photocopy of the Marriage Certificate
• Recent two (2) pieces 2×2 colored ID Pictures''',
                                      style: TextStyle(
                                        fontSize: 5.sp,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 4.sp),
                                  color: HexColor('f8d00e'),
                                  height: 0.5.h,
                                  width: 100.w,
                                ),
                                SizedBox(
                                  height: 2.h,
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'Contact Information:',
                                    style: TextStyle(
                                        fontSize: 8.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'Facebook Page',
                                    style: TextStyle(
                                      fontSize: 6.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    margin:
                                        EdgeInsets.only(left: 4.sp, top: 2.sp),
                                    child: Text(
                                      '• http://facebook.com/nuadmissionsmnl',
                                      style: TextStyle(
                                        fontSize: 5.sp,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 2.sp,
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'Contact Numbers',
                                    style: TextStyle(
                                      fontSize: 6.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    margin:
                                        EdgeInsets.only(left: 4.sp, top: 2.sp),
                                    child: Text(
                                      '''
• 0947-996-1932
• 0947-996-1933
• 0922-301-6192''',
                                      style: TextStyle(
                                        fontSize: 5.sp,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 2.sp,
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'Email Address',
                                    style: TextStyle(
                                      fontSize: 6.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    margin:
                                        EdgeInsets.only(left: 4.sp, top: 2.sp),
                                    child: Text(
                                      '• admissions@national-u.edu.ph',
                                      style: TextStyle(
                                        fontSize: 5.sp,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
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
                            MaterialPageRoute(
                                builder: (context) => aboutHome()),
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
