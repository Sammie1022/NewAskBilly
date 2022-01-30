import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:abigail_askbilly/LoadingPage/Loadingpage.dart';
import 'package:sizer/sizer.dart';

class landingPage extends StatelessWidget {
  var size, height, width;

  @override
  Widget build(BuildContext context) {
    // getting the size of the window
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    //Set landscape orientation
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]); //landscape orientation

    return Scaffold(
        body: new Stack(
      children: <Widget>[
        Container(
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage(
                  'assets/LandingPage/images/landing-background.gif'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          // Logo
          margin: EdgeInsets.fromLTRB(30.0.sp, 10.0.sp, 30.0.sp, 40.0.sp),
          child: Image(
            image: AssetImage('assets/logo.png'),
            height: height / 1,
            width: width / 1,
          ),
        ), // Logo
        // Image Button
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => loadingPage()),
            );
          },
          child: Container(
            height: 90.h,
            margin: EdgeInsets.fromLTRB(10.0.sp, 40.0.sp, 10.0.sp, 10.0.sp),
            alignment: Alignment.bottomCenter,
            child: Image.asset(
              'assets/LandingPage/images/start-btn-unclicked.png',
            ),
          ),
        ),
      ],
    ));
  }
}
