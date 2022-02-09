import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:abigail_askbilly/LoadingPage/Loadingpage.dart';
import 'package:sizer/sizer.dart';
import 'package:video_player/video_player.dart';

class homePage extends StatefulWidget {
  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  var size, height, width;
  // TODO 4: Create a VideoPlayerController object.
  late VideoPlayerController _controller;

  //TODO 5: Override the initState() method and setup your VideoPlayerController
  @override
  void initState() {
    super.initState();
    // Pointing the video controller to our local asset.
    // _controller =
    //     VideoPlayerController.asset('assets/HomePage/sample-video.mp4')
    //       ..initialize().then((_) {
    //         // Once the video has been loaded we play the video and set looping to true.
    //         _controller.play();
    //         _controller.setLooping(true);
    //         // Ensure the first frame is shown after the video is initialized.
    //         setState(() {});
    //       });
  }

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
      height: 100.h,
      width: 100.w,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(6),
            width: 100.w,
            height: 20.h,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/paws.gif'),
                fit: BoxFit.cover,
              ),
            ),
            child: Align(
              child: Image.asset('assets/logo.png'),
              alignment: Alignment.centerRight,
            ),
          ),
          Container(
            color: Colors.red,
            height: 2.h,
            width: 100.w,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        child: Image.asset(
                            'assets/HomePage/buttons/home-btn about.png',
                            height: 10.h,
                            width: 20.w,
                            fit: BoxFit.contain),
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      Image.asset('assets/HomePage/buttons/home-btn about.png',
                          height: 10.h, width: 20.w, fit: BoxFit.contain),
                      SizedBox(
                        height: 3.h,
                      ),
                      Image.asset('assets/HomePage/buttons/home-btn about.png',
                          height: 10.h, width: 20.w, fit: BoxFit.contain),
                    ],
                  ),
                  SizedBox(width: 5.w),
                  Container(
                    width: 60.w,
                    height: 60.h,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: Colors.red,
            height: 2.h,
            width: 100.w,
          ),
        ],
      ),
    ));
  }

  // TODO: Override the dipose() method to cleanup the video controller.
  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
