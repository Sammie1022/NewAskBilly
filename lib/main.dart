import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:abigail_askbilly/LandingPage/Landingpage.dart';
import 'LoadingPage/Loadingpage.dart';

void main() => runApp(MaterialApp(
      home: landingPage(),
    ));

// import 'package:flutter/material.dart';
//
// import 'package:video_player/video_player.dart';
//
// void main() => runApp(BackgroundVideo());
//
// class BackgroundVideo extends StatefulWidget {
//   @override
//   _BackgroundVideoState createState() => _BackgroundVideoState();
// }
//
// class _BackgroundVideoState extends State<BackgroundVideo> {
//   // TODO 4: Create a VideoPlayerController object.
//   late VideoPlayerController _controller;
//
//   // TODO 5: Override the initState() method and setup your VideoPlayerController
//   @override
//   void initState() {
//     super.initState();
//     // Pointing the video controller to our local asset.
//     _controller = VideoPlayerController.asset(
//         'assets/LandingPage/video/landing-bg-video.mp4')
//       ..initialize().then((_) {
//         // Once the video has been loaded we play the video and set looping to true.
//         _controller.play();
//         _controller.setLooping(true);
//         // Ensure the first frame is shown after the video is initialized.
//         setState(() {});
//       });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         // Adjusted theme colors to match logo.
//         primaryColor: Color(0xffb55e28),
//         accentColor: Color(0xffffd544),
//       ),
//       home: SafeArea(
//         child: Scaffold(
//           // TODO 6: Create a Stack Widget
//           body: Stack(
//             children: <Widget>[
//               // TODO 7: Add a SizedBox to contain our video.
//               SizedBox.expand(
//                 child: FittedBox(
//                   // If your background video doesn't look right, try changing the BoxFit property.
//                   // BoxFit.fill created the look I was going for.
//                   fit: BoxFit.fill,
//                   child: SizedBox(
//                     width: _controller.value.size?.width ?? 0,
//                     height: _controller.value.size?.height ?? 0,
//                     child: VideoPlayer(_controller),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   // TODO 8: Override the dipose() method to cleanup the video controller.
//   @override
//   void dispose() {
//     super.dispose();
//     _controller.dispose();
//   }
// }
