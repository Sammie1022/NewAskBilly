import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:abigail_askbilly/LoadingPage/Loadingpage.dart';
import 'package:sizer/sizer.dart';

class landingPage extends StatefulWidget {
  @override
  State<landingPage> createState() => _landingPageState();
}

class _landingPageState extends State<landingPage> {
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
        body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/LandingPage/images/landing-background.gif'),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        height: 100.h,
        width: 100.w,
        child: Column(
          children: <Widget>[
            Container(
              // Logo
              margin: EdgeInsets.fromLTRB(30.0.sp, 10.0.sp, 30.0.sp, 5.0.sp),
              child: Image(
                image: AssetImage('assets/logo.png'),
                height: height / 1.3,
                width: width / 1.3,
              ),
            ), // Logo
            //Image Button
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => loadingPage()),
                );
              },
              child: Container(
                alignment: Alignment.bottomCenter,
                child: Image.asset(
                  'assets/LandingPage/images/start-btn-unclicked.png',
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
