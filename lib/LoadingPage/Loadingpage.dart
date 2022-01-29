import 'dart:async';
import 'package:abigail_askbilly/HomePage/Homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Loader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: loadingPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

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
      child: Image(
        image: AssetImage('assets/LoadingPage/loading.gif'),
      ),
      //child: FlutterLogo(size: MediaQuery.of(context).size.height));
    );
  }
}
