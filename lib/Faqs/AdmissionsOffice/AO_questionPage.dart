import 'package:abigail_askbilly/Faqs/widget/button_widget.dart';
import 'package:abigail_askbilly/Faqs/widget/navigation_drawer_widget.dart';
import 'package:abigail_askbilly/LoadingPage/Loadingpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class admissionQuestionScreen extends StatelessWidget {
  static final String title = 'Navigation Drawer';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(primarySwatch: Colors.blue),
        home: admissionQuestion(),
      );
}

class admissionQuestion extends StatefulWidget {
  const admissionQuestion({Key? key}) : super(key: key);

  @override
  _admissionQuestionState createState() => _admissionQuestionState();
}

class _admissionQuestionState extends State<admissionQuestion> {
  var size, height, width;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background-for-all.gif'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          child: SafeArea(
            child: Builder(
              builder: (context) => Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 32),
                child: ButtonWidget(
                  icon: Icons.open_in_new,
                  text: 'Menu',
                  onClicked: () {
                    Scaffold.of(context).openDrawer();
                    // Scaffold.of(context).openEndDrawer();
                  },
                ),
              ),
            ),
            // Container(
            //   // Logo
            //   // alignment: Alignment.topRight,
            //   // margin: EdgeInsets.fromLTRB(0.0.sp, 1.0.sp, 0.0.sp, 0.0.sp),
            //   //margin: EdgeInsets.fromLTRB(30.0.sp, 10.0.sp, 30.0.sp, 5.0.sp),
            //   child: Image(
            //     image: AssetImage('assets/logo.png'),
            //     height: height / 9,
            //     width: width / 9,
            //   ),
            // ),
            // Container(
            //   alignment: Alignment.bottomLeft,
            //   child: GestureDetector(
            //     onTap: () {
            //       Navigator.push(
            //         context,
            //         MaterialPageRoute(builder: (context) => loadingPage()),
            //       );
            //     },
            //     child: Container(
            //       child: Image.asset(
            //         'assets/back-btn.png',
            //       ),
            //       height: height / 3,
            //     ),
            //   ),
            // ),
          ),
        ),
      ),
    );
  }
}
