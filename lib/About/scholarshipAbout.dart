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

import 'Admission.dart';

class scholarshipAbout extends StatefulWidget {
  @override
  State<scholarshipAbout> createState() => _scholarshipAboutState();
}

class _scholarshipAboutState extends State<scholarshipAbout> {
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
                            MaterialPageRoute(
                                builder: (context) => scholarshipAbout()),
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
                              'Scholarships',
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
                                    'NU Manila College Academic Scholarships and Other Discounts',
                                    style: TextStyle(
                                        fontSize: 8.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 4.sp),
                                  color: HexColor('f8d00e'),
                                  height: 0.5.h,
                                  width: 100.w,
                                ),
                                SizedBox(
                                  height: 2.sp,
                                ),
                                SizedBox(
                                  height: 2.sp,
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    '''Don Mariano F. Jhocson Gold Scholar
(With Highest Honors/ May Pinakamataas na Karangalan)''',
                                    style: TextStyle(
                                      fontSize: 6.sp,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 3.sp,
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    margin: EdgeInsets.only(
                                      left: 5.sp,
                                    ),
                                    child: Text(
                                      'Requirements:',
                                      style: TextStyle(
                                        fontSize: 6.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    margin:
                                        EdgeInsets.only(left: 8.sp, top: 2.sp),
                                    child: Text(
                                      '''
• Certificate coming from the high school and signed by the Principal indicating the award received by the student
• Original Grade 12 Report Card (for incoming Freshmen)
• Certificate of Good Moral Character from High School (for incoming Freshmen)
• Photocopy of PSA Birth Certificate
• Must pass the National University Admissions Test (NUAT) – ABOVE AVERAGE score
• Applicants should not have a grade lower than 90 in any subject''',
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
                                  child: Container(
                                    margin: EdgeInsets.only(
                                      left: 5.sp,
                                    ),
                                    child: Text(
                                      'Benefits:',
                                      style: TextStyle(
                                        fontSize: 6.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    margin:
                                        EdgeInsets.only(left: 8.sp, top: 2.sp),
                                    child: Text(
                                      '''
• 100% Discount on Tuition Fee
• 100% Discount on Miscellaneous Fee
• Free set of School Uniform
• Trimester Book Allowance
• Trimestral stipend''',
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
                                  child: Container(
                                    margin: EdgeInsets.only(
                                      left: 5.sp,
                                    ),
                                    child: Text(
                                      'Note:',
                                      style: TextStyle(
                                        fontSize: 6.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    margin:
                                        EdgeInsets.only(left: 8.sp, top: 2.sp),
                                    child: Text(
                                      '''
Gold scholars are still subject to an interview to qualify for other benefits ( Free School Uniform, Trimester Book Allowance, Trimestral stipend). This can be availed for 4years/5years (depending on the degree program) provided that the student complies with the retention requirements set by the University. Applicants should not have a grade lower than 90 in any subject. The discount is applicable for the term of entry only.''',
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
                                    '''Dona Miguela M. Jhocson Blue Scholar
(With High Honors/ May Mataas na Karangalan)''',
                                    style: TextStyle(
                                      fontSize: 6.sp,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 3.sp,
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    margin: EdgeInsets.only(
                                      left: 5.sp,
                                    ),
                                    child: Text(
                                      'Requirements:',
                                      style: TextStyle(
                                        fontSize: 6.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    margin:
                                        EdgeInsets.only(left: 8.sp, top: 2.sp),
                                    child: Text(
                                      '''
• Certificate coming from the high school and signed by the Principal indicating the award received by the student
• Original Grade 12 Report Card (for incoming Freshmen)
• Certificate of Good Moral Character from High School (for incoming Freshmen)
• Photocopy of PSA Birth Certificate
• Must pass the National University Admissions Test (NUAT) – AVERAGE score
• Applicants should not have a grade lower than 90 in any subject''',
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
                                  child: Container(
                                    margin: EdgeInsets.only(
                                      left: 5.sp,
                                    ),
                                    child: Text(
                                      'Benefits:',
                                      style: TextStyle(
                                        fontSize: 6.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    margin:
                                        EdgeInsets.only(left: 8.sp, top: 2.sp),
                                    child: Text(
                                      '''
• 100% Discount on Tuition Fee
• 100% Discount on Miscellaneous Fee''',
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
                                  child: Container(
                                    margin: EdgeInsets.only(
                                      left: 5.sp,
                                    ),
                                    child: Text(
                                      'Note:',
                                      style: TextStyle(
                                        fontSize: 6.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    margin:
                                        EdgeInsets.only(left: 8.sp, top: 2.sp),
                                    child: Text(
                                      '''Blue scholarship can be availed for 4years/5years (depending on the degree program) provided that the student complies with the retention requirements set by the University. Applicants should not have a grade lower than 90 in any subject. The discount is applicable for the term of entry only.''',
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
                                    '''Dona Pacita J. Ocampo White Scholar
(With Honors/ May Karangalan)''',
                                    style: TextStyle(
                                      fontSize: 6.sp,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 3.sp,
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    margin: EdgeInsets.only(
                                      left: 5.sp,
                                    ),
                                    child: Text(
                                      'Requirements:',
                                      style: TextStyle(
                                        fontSize: 6.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    margin:
                                        EdgeInsets.only(left: 8.sp, top: 2.sp),
                                    child: Text(
                                      '''
• Certificate coming from the high school and signed by the Principal indicating the award received by the student
• Original Grade 12 Report Card (for incoming Freshmen)
• Certificate of Good Moral Character from High School (for incoming Freshmen)
• Photocopy of PSA Birth Certificate
• Must pass the National University Admissions Test (NUAT) – AVERAGE score
• Applicants should not have a grade lower than 88 in any subject''',
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
                                  child: Container(
                                    margin: EdgeInsets.only(
                                      left: 5.sp,
                                    ),
                                    child: Text(
                                      'Benefits:',
                                      style: TextStyle(
                                        fontSize: 6.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    margin:
                                        EdgeInsets.only(left: 8.sp, top: 2.sp),
                                    child: Text(
                                      '''
• 100% Discount on Tuition Fee
''',
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
                                  child: Container(
                                    margin: EdgeInsets.only(
                                      left: 5.sp,
                                    ),
                                    child: Text(
                                      'Note:',
                                      style: TextStyle(
                                        fontSize: 6.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    margin:
                                        EdgeInsets.only(left: 8.sp, top: 2.sp),
                                    child: Text(
                                      '''The discount is applicable for the term of entry only.''',
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
                                    '''Nationalian Scholarship Program''',
                                    style: TextStyle(
                                      fontSize: 6.sp,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 3.sp,
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    margin: EdgeInsets.only(
                                      left: 5.sp,
                                    ),
                                    child: Text(
                                      '''Awarded to students who can maintain a grade of 88% in all academic subjects in Senior High School (1st Grading to 4th Grading period)''',
                                      style: TextStyle(
                                        fontSize: 5.sp,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 3.sp,
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    margin: EdgeInsets.only(
                                      left: 5.sp,
                                    ),
                                    child: Text(
                                      'Requirements:',
                                      style: TextStyle(
                                        fontSize: 6.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    margin:
                                        EdgeInsets.only(left: 8.sp, top: 2.sp),
                                    child: Text(
                                      '''
• Original Grade 12 Report Card (for incoming Freshmen)
• Certificate of Good Moral Character from High School (for incoming Freshmen)
• Photocopy of PSA Birth Certificate
• Must pass the National University Admissions Test (NUAT) – AVERAGE score
• Applicants must maintain a grade of 88% in all academic subjects from 1st to 4th grading period''',
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
                                  child: Container(
                                    margin: EdgeInsets.only(
                                      left: 5.sp,
                                    ),
                                    child: Text(
                                      'Benefits:',
                                      style: TextStyle(
                                        fontSize: 6.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    margin:
                                        EdgeInsets.only(left: 8.sp, top: 2.sp),
                                    child: Text(
                                      '''
• 50% Discount on Tuition Fee''',
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
                                  child: Container(
                                    margin: EdgeInsets.only(
                                      left: 5.sp,
                                    ),
                                    child: Text(
                                      'Note:',
                                      style: TextStyle(
                                        fontSize: 6.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    margin:
                                        EdgeInsets.only(left: 8.sp, top: 2.sp),
                                    child: Text(
                                      '''The discount is applicable for the term of entry only.''',
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
                                    '''Mariano Jhocson Science Scholarship Program''',
                                    style: TextStyle(
                                      fontSize: 6.sp,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 3.sp,
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    margin: EdgeInsets.only(
                                      left: 5.sp,
                                    ),
                                    child: Text(
                                      '''Awarded to students from the identified Science high schools whose NUAT score is at least 90% with a HS GWA of at least 88% and an annual family income not exceeding Php360,000.00 per year.''',
                                      style: TextStyle(
                                        fontSize: 5.sp,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 3.sp,
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    margin: EdgeInsets.only(
                                      left: 5.sp,
                                    ),
                                    child: Text(
                                      'Requirements:',
                                      style: TextStyle(
                                        fontSize: 6.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    margin:
                                        EdgeInsets.only(left: 8.sp, top: 2.sp),
                                    child: Text(
                                      '''
• Latest tax exemption certificate or income tax return of both parents
• Two (2) recommendation letters from school administrators or faculty (attach a photocopy of valid ID of the recommender) addressed to Admissions Director
• Original Grade 12 Report Card (for incoming Freshmen)
• Certificate of Good Moral Character from High School (for incoming Freshmen)
• Photocopy of PSA Birth Certificate''',
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
                                  child: Container(
                                    margin: EdgeInsets.only(
                                      left: 5.sp,
                                    ),
                                    child: Text(
                                      'Benefits:',
                                      style: TextStyle(
                                        fontSize: 6.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    margin:
                                        EdgeInsets.only(left: 8.sp, top: 2.sp),
                                    child: Text(
                                      '''
• 100% Discount on Tuition Fee
• 100% Discount on Miscellaneous Fee''',
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
                                  child: Container(
                                    margin: EdgeInsets.only(
                                      left: 5.sp,
                                    ),
                                    child: Text(
                                      'Note:',
                                      style: TextStyle(
                                        fontSize: 6.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    margin:
                                        EdgeInsets.only(left: 8.sp, top: 2.sp),
                                    child: Text(
                                      '''The discount is applicable for the term of entry only.''',
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
                                    '''Employees of SM and its Affiliates''',
                                    style: TextStyle(
                                      fontSize: 6.sp,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 3.sp,
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    margin: EdgeInsets.only(
                                      left: 5.sp,
                                    ),
                                    child: Text(
                                      '''Grants a discount to their spouse, children, siblings whose applicable to current employees (immediate family members only).''',
                                      style: TextStyle(
                                        fontSize: 5.sp,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 3.sp,
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    margin: EdgeInsets.only(
                                      left: 5.sp,
                                    ),
                                    child: Text(
                                      'Requirements:',
                                      style: TextStyle(
                                        fontSize: 6.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    margin:
                                        EdgeInsets.only(left: 8.sp, top: 2.sp),
                                    child: Text(
                                      '''
• Certificate of Employment from the HR Department of SM
• If an employee is single, kindly provide a photocopy of the NSO Birth Certificate of the sibling (both the employee and the student for the first-time applicants
• Original Grade 12 Report Card (for incoming Freshmen)
• Certificate of Good Moral Character from High School (for incoming Freshmen)
• Photocopy of PSA Birth Certificate''',
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
                                  child: Container(
                                    margin: EdgeInsets.only(
                                      left: 5.sp,
                                    ),
                                    child: Text(
                                      'Benefits:',
                                      style: TextStyle(
                                        fontSize: 6.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    margin:
                                        EdgeInsets.only(left: 8.sp, top: 2.sp),
                                    child: Text(
                                      '''
• 20% Discount on Tuition Fee and Miscellaneous Fee''',
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
                                  child: Container(
                                    margin: EdgeInsets.only(
                                      left: 5.sp,
                                    ),
                                    child: Text(
                                      'Note:',
                                      style: TextStyle(
                                        fontSize: 6.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    margin:
                                        EdgeInsets.only(left: 8.sp, top: 2.sp),
                                    child: Text(
                                      '''The discount is applicable per term.''',
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
                                    '''Alumni Discount''',
                                    style: TextStyle(
                                      fontSize: 6.sp,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 3.sp,
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    margin: EdgeInsets.only(
                                      left: 5.sp,
                                    ),
                                    child: Text(
                                      'Requirements:',
                                      style: TextStyle(
                                        fontSize: 6.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    margin:
                                        EdgeInsets.only(left: 8.sp, top: 2.sp),
                                    child: Text(
                                      '''
• Alumni ID/Transcript of Records/Diploma or any documents that might serve as proof.''',
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
                                  child: Container(
                                    margin: EdgeInsets.only(
                                      left: 5.sp,
                                    ),
                                    child: Text(
                                      'Benefits:',
                                      style: TextStyle(
                                        fontSize: 6.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    margin:
                                        EdgeInsets.only(left: 8.sp, top: 2.sp),
                                    child: Text(
                                      '''
• 20% Discount on Tuition Fee and Miscellaneous Fee''',
                                      style: TextStyle(
                                        fontSize: 5.sp,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 2.sp,
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
                                    '''Sibling Discount''',
                                    style: TextStyle(
                                      fontSize: 6.sp,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 3.sp,
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    margin:
                                        EdgeInsets.only(left: 8.sp, top: 2.sp),
                                    child: Text(
                                      '''
Students whose siblings enroll in the University are entitled to the following:''',
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
                                  child: Container(
                                    margin:
                                        EdgeInsets.only(left: 8.sp, top: 2.sp),
                                    child: Text(
                                      '''
Sibling	Discount
1	No discount
2	15% discount on the lowest tuition fee among the siblings
3	30% discount on the lowest tuition fee among the siblings
4	50% discount on the lowest tuition fee among the siblings''',
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
