import 'package:abigail_askbilly/LandingPage/Landingpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class loadingPage extends StatefulWidget {
  const loadingPage({Key? key}) : super(key: key);

  @override
  State<loadingPage> createState() => _loadingPageState();
}

class _loadingPageState extends State<loadingPage> {
  @override
  Widget build(BuildContext context) {
    //Set landscape orientation
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]); //landscape orientation
    return Scaffold(
      backgroundColor: Colors.grey[600],
      body: Column(
        //padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        // child: Column(
        //   //crossAxisAlignment: CrossAxisAlignment.start,
        //   mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 30.0,
          ),
          Center(
            // Logo
            child: Image(
              image: AssetImage('assets/LandingPage/images/logo.png'),
              height: 300,
              width: 300,
            ),
          ), // Logo
          SizedBox(
            height: 5.0,
          ),
          Container(
            child: ElevatedButton(
              child: Text(
                'Loading Page',
                style: TextStyle(fontSize: 25.0),
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                      if (states.contains(MaterialState.pressed))
                        return Colors.amber;
                      return Colors.blue; // Use the component's default.
                    },
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ))),
              onPressed: () {},
            ),
          ),
        ],
        // ),
      ),
    );
  }
}
