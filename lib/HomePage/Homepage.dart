import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class homePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[100],
      ),
      body: Center(
          child: Text(
        "Home Page",
        textScaleFactor: 2,
      )),
    );
  }
}
