import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class menuBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // padding: EdgeInsets.only(top: 2.sp),
        children: [
          Card(
            child: ListTile(
              title: Text('HOME'),
            ),
          )
          // Container(
          //   // padding: EdgeInsets.symmetric(
          //   //   horizontal: 1.w,
          //   // ),
          //   decoration: BoxDecoration(
          //       color: Colors.grey[200],
          //       borderRadius: BorderRadius.all(Radius.circular(8))),
          //   child: ListTile(
          //     leading: Container(
          //       color: Colors.amber,
          //       child: Icon(
          //         Icons.home,
          //         size: 5.h,
          //       ),
          //     ),
          //     title: Container(
          //       color: Colors.red,
          //       child: Text(
          //         'HOME',
          //         style: TextStyle(fontSize: 5.sp),
          //       ),
          //     ),
          //     onTap: () => null,
          //   ),
          // ),
          // Container(
          //   margin: EdgeInsets.all(5),
          //   decoration: BoxDecoration(
          //       color: Colors.grey[200],
          //       borderRadius: BorderRadius.all(Radius.circular(8))),
          //   child: ListTile(
          //     leading: Icon(
          //       Icons.location_on,
          //       size: 5.h,
          //     ),
          //     title: Text(
          //       'MAPS',
          //       style: TextStyle(fontSize: 5.sp),
          //     ),
          //     onTap: () => null,
          //   ),
          // ),
          // Container(
          //   margin: EdgeInsets.all(5),
          //   decoration: BoxDecoration(
          //       color: Colors.grey[200],
          //       borderRadius: BorderRadius.all(Radius.circular(8))),
          //   child: ListTile(
          //     leading: Icon(
          //       Icons.question_answer,
          //       size: 5.h,
          //     ),
          //     title: Text(
          //       'FAQs',
          //       style: TextStyle(fontSize: 5.sp),
          //     ),
          //     onTap: () => null,
          //   ),
          // ),
          // Container(
          //   margin: EdgeInsets.all(5),
          //   decoration: BoxDecoration(
          //       color: Colors.grey[200],
          //       borderRadius: BorderRadius.all(Radius.circular(8))),
          //   child: ListTile(
          //     leading: Icon(
          //       Icons.info,
          //       size: 10.sp,
          //     ),
          //     title: Text(
          //       'ABOUT NU',
          //       style: TextStyle(fontSize: 5.sp),
          //     ),
          //     onTap: () => null,
          //   ),
          // ),
          // Divider(),
          // ListTile(
          //   leading: Icon(
          //     Icons.person,
          //     size: 5.h,
          //   ),
          //   title: Text(
          //     'ADMIN',
          //     style: TextStyle(fontSize: 5.sp),
          //   ),
          //   onTap: () => null,
          // ),
        ],
      ),
    );
  }
}
