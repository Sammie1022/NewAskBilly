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
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background-for-all.gif'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          child: SafeArea(
            child: Row(
              children: <Widget>[
                Container(
                  // Logo
                  alignment: Alignment.topLeft,
                  //margin: EdgeInsets.fromLTRB(90.0.sp, 1.0.sp, 0.0.sp, 0.0.sp),
                  //margin: EdgeInsets.fromLTRB(30.0.sp, 10.0.sp, 30.0.sp, 5.0.sp),
                  child: Image(
                    image: AssetImage('assets/logo.png'),
                    height: height / 9,
                    width: width / 9,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => loadingPage()),
                    );
                  },
                  child: Container(
                    child: Image.asset(
                      'assets/FAQsPage/images/buttons/AO-btn.png',
                    ),
                    height: height / 3,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => loadingPage()),
                    );
                  },
                  child: Container(
                    child: Image.asset(
                      'assets/FAQsPage/images/buttons/SDAO-btn.png',
                    ),
                    height: height / 3,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => loadingPage()),
                    );
                  },
                  child: Container(
                    child: Image.asset(
                      'assets/FAQsPage/images/buttons/GSO-btn.png',
                    ),
                    height: height / 3,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => loadingPage()),
                    );
                  },
                  child: Container(
                    child: Image.asset(
                      'assets/FAQsPage/images/buttons/HEALTH-btn.png',
                    ),
                    height: height / 3,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => loadingPage()),
                    );
                  },
                  child: Container(
                    child: Image.asset(
                      'assets/FAQsPage/images/buttons/ITRO-btn.png',
                    ),
                    height: height / 3,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => loadingPage()),
                    );
                  },
                  child: Container(
                    child: Image.asset(
                      'assets/FAQsPage/images/buttons/LRC-btn.png',
                    ),
                    height: height / 3,
                  ),
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => loadingPage()),
                      );
                    },
                    child: Container(
                      child: Image.asset(
                        'assets/back-btn.png',
                      ),
                      height: height / 3,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
