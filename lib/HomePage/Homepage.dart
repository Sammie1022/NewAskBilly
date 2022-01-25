import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class homePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Center(
            child: Image(
              image: AssetImage('assets/background-for-all.gif'),
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
