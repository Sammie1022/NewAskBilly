import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class menuBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 25.w,
      child: Drawer(
          child: Container(
        // padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 1.w),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {},
              child: Container(
                color: Colors.red,
                margin: EdgeInsets.only(top: 1.h, left: 1.w, right: 1.w),
                padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 1.w),
                child: Row(
                  children: [
                    Icon(
                      Icons.home,
                      size: 5.h,
                    ),
                    Text(
                      'HOME',
                      style: TextStyle(fontSize: 5.sp),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                color: Colors.red,
                margin: EdgeInsets.only(top: 1.h, left: 1.w, right: 1.w),
                padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 1.w),
                child: Row(
                  children: [
                    Icon(
                      Icons.home,
                      size: 5.h,
                    ),
                    Text(
                      'HOME',
                      style: TextStyle(fontSize: 5.sp),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
