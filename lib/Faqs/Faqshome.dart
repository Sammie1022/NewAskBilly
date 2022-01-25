import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class faqsHome extends StatelessWidget {
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
          Align(
            alignment: Alignment.topRight,
            child: Image(
              image: AssetImage('assets/logo.png'),
              height: 70.0,
              width: 70.0,
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image(
                image: AssetImage('assets/FAQsPage/images/buttons/AO-btn.png'),
              ),
              Image(
                image: AssetImage('assets/FAQsPage/images/buttons/GSO-btn.png'),
              ),
              Image(
                image:
                    AssetImage('assets/FAQsPage/images/buttons/HEALTH-btn.png'),
              ),
              Image(
                image:
                    AssetImage('assets/FAQsPage/images/buttons/ITRO-btn.png'),
              ),
              Image(
                image: AssetImage('assets/FAQsPage/images/buttons/LRC-btn.png'),
              ),
              Image(
                image:
                    AssetImage('assets/FAQsPage/images/buttons/SDAO-btn.png'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
