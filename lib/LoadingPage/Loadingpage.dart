import 'dart:async';
import 'package:abigail_askbilly/HomePage/Homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class loadingPage extends StatefulWidget {
  @override
  _loadingPageState createState() => _loadingPageState();
}

class _loadingPageState extends State<loadingPage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 14),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => homePage())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/LoadingPage/loading.gif'),
          fit: BoxFit.cover,
        ),
      ),
      //child: FlutterLogo(size: MediaQuery.of(context).size.height));
    );
  }
}
