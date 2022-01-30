import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:abigail_askbilly/LoadingPage/Loadingpage.dart';
import 'package:sizer/sizer.dart';
//import 'package:video_player/video_player.dart';

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
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(0.0),
            child: Image(
              image: AssetImage(
                  'assets/LandingPage/images/landing-background.gif'),
              height: 100.h,
              width: 100.w,
            ),
          ),
          Container(
            // Logo
            margin: EdgeInsets.fromLTRB(10.0.sp, 5.0.sp, 10.0.sp, 40.0.sp),
            child: Image(
              image: AssetImage('assets/logo.png'),
              width: 75.w,
              height: 75.h,
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
              margin: EdgeInsets.fromLTRB(10.0.sp, 20.0.sp, 10.0.sp, 10.0.sp),
              alignment: Alignment.bottomCenter,
              child: Image.asset(
                'assets/LandingPage/images/start-btn-unclicked.png',
                height: 15.h,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
