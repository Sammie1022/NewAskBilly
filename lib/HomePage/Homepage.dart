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
    _controller =
        VideoPlayerController.asset('assets/HomePage/sample-video.mp4')
          ..initialize().then((_) {
            // Once the video has been loaded we play the video and set looping to true.
            _controller.play();
            _controller.setLooping(true);
            // Ensure the first frame is shown after the video is initialized.
            setState(() {});
          });
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
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/background-for-all.gif'),
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
              alignment: Alignment.topRight,
              margin: EdgeInsets.fromLTRB(0.0.sp, 1.0.sp, 0.0.sp, 0.0.sp),
              //margin: EdgeInsets.fromLTRB(30.0.sp, 10.0.sp, 30.0.sp, 5.0.sp),
              child: Image(
                image: AssetImage('assets/logo.png'),
                height: height / 8,
                width: width / 8,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => loadingPage()),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0.0.sp, 4.0.sp, 0.0.sp, 0.0.sp),
                    child: Image.asset(
                      'assets/HomePage/buttons/home-btn-faqs.png',
                    ),
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
                    margin: EdgeInsets.fromLTRB(0.0.sp, 4.0.sp, 0.0.sp, 0.0.sp),
                    child: Image.asset(
                      'assets/HomePage/buttons/home-btn-maps.png',
                    ),
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
                    margin: EdgeInsets.fromLTRB(0.0.sp, 4.0.sp, 0.0.sp, 0.0.sp),
                    child: Image.asset(
                      'assets/HomePage/buttons/home-btn about.png',
                    ),
                  ),
                ),
              ],
            ),
            // TODO: Add a SizedBox to contain our video.
            Container(
              //alignment: Alignment.centerRight,
              margin: EdgeInsets.fromLTRB(90.0.sp, 40.0.sp, 10.0.sp, 10.0.sp),
              child: FittedBox(
                // If your background video doesn't look right, try changing the BoxFit property.
                // BoxFit.fill created the look I was going for.
                fit: BoxFit.fill,
                child: SizedBox(
                  width: 80.w,
                  height: 70.h,
                  child: VideoPlayer(_controller),
                ),
              ),
            ),

            //Video Player
          ],
        ),
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
