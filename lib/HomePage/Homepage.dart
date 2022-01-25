import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class homePage extends StatefulWidget {
  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  //late VideoPlayerController controller;

  @override
  void initState() {
    // super.initState();
    // controller = VideoPlayerController.asset(
    //     'assets/LandingPage/video/landing-bg-video.mp4')
    //   ..addListener(() => setState(() {}))
    //   ..setLooping(true)
    //   ..initialize().then((_) => controller.play());
  }

  @override
  Widget build(BuildContext context) {
    //return VideoPlayerWidget(controller: controller);
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
          InkWell(
            splashColor: Colors.black38,
            onTap: () {},
            child: Ink.image(
              image: AssetImage('assets/HomePage/buttons/home-btn about.png'),
              height: 60,
              width: 120,
              fit: BoxFit.cover,
            ),
          ),
          //video
          // SizedBox.expand(
          //   child: FittedBox(
          //     // If your background video doesn't look right, try changing the BoxFit property.
          //     // BoxFit.fill created the look I was going for.
          //     fit: BoxFit.fill,
          //     child: SizedBox(
          //       // width: _controller.value.size?.width ?? 0,
          //       // height: _controller.value.size?.height ?? 0,
          //       child: VideoPlayer(controller),
          //     ),
          //   ),
          // ),
          //Video Player
        ],
      ),
    );
  }
  //
  // @override
  // void dispose() {
  //   super.dispose();
  //   controller.dispose();
  // }
}
