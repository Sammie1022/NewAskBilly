import 'package:abigail_askbilly/LoadingPage/Loadingpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class faqsHome extends StatefulWidget {
  @override
  State<faqsHome> createState() => _faqsHomeState();
}

class _faqsHomeState extends State<faqsHome> {
  var size, height, width;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
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
                  size: 11.h,
                ),
                Expanded(
                    child: Text(
                  'OFFICE',
                  style: TextStyle(fontSize: 12.sp),
                )),
                Image.asset('assets/logo.png'),
              ],
            ),
          ),
          Container(
            color: Colors.red,
            height: 2.h,
            width: 100.w,
          ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  height: 100.h,
                  color: Colors.blue,
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assets/FAQsPage/images/buttons/AO-btn.png',
                          width: 13.w, fit: BoxFit.contain),
                      Image.asset('assets/FAQsPage/images/buttons/SDAO-btn.png',
                          width: 13.w, fit: BoxFit.contain),
                      Image.asset('assets/FAQsPage/images/buttons/SDAO-btn.png',
                          width: 13.w, fit: BoxFit.contain),
                      Image.asset('assets/FAQsPage/images/buttons/SDAO-btn.png',
                          width: 13.w, fit: BoxFit.contain),
                      Image.asset('assets/FAQsPage/images/buttons/SDAO-btn.png',
                          width: 13.w, fit: BoxFit.contain),
                      Image.asset('assets/FAQsPage/images/buttons/SDAO-btn.png',
                          width: 13.w, fit: BoxFit.contain),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  margin: EdgeInsets.only(bottom: 5),
                  child: Image.asset(
                    'assets/back-btn.png',
                    height: 10.h,
                    width: 10.w,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.red,
            height: 2.h,
            width: 100.w,
          ),
        ],
      ),
    ));
  }
}
