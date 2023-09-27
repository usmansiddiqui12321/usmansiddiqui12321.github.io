import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/screens/Detailed%20Screen/Components/description_box.dart';
import 'package:portfolio/screens/Detailed%20Screen/Components/play_button.dart';
import 'package:portfolio/screens/mainScreen/main_screen.dart';
import 'package:video_player/video_player.dart';



class DetailedPage extends StatefulWidget {
  final String videoPath, title, description, gitlink;
  const DetailedPage({
    super.key,
    required this.videoPath,
    required this.title,
    required this.description,
    required this.gitlink,
  });

  @override
  DetailedPageState createState() => DetailedPageState();
}

class DetailedPageState extends State<DetailedPage> {
  late VideoPlayerController controller;

  @override
  void initState() {
    super.initState();
    controller = VideoPlayerController.asset(widget.videoPath,
        videoPlayerOptions: VideoPlayerOptions())
      ..addListener(() => setState(() {}))
      ..setLooping(true)
      ..initialize().then((_) => controller.play());
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: secondaryColor,
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: secondaryColor,
        centerTitle: true,
      ),
      // backgroundColor: Colors.black,
      body: MainScreen(
        children: [
          if (Responsive.isMobileLarge(context))
            SizedBox(
              // height: size.height,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Column(
                      children: videoPlayerWithButton(context),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    DescriptionBox(size: size, widget: widget)
                  ],
                ),
              ),
            )
          else
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    children: videoPlayerWithButton(context),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                DescriptionBox(size: size, widget: widget),
              ],
            ),
        ],
      ),
    );
  }

  List<Widget> videoPlayerWithButton(BuildContext context) {
    return [
      const SizedBox(height: 20),
      if (controller.value.isInitialized)
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * .74,
                width:
                    MediaQuery.of(context).size.width * .75, //perfect for WEB
                child: VideoPlayer(controller),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: PlayButton(controller: controller),
            ),
          ],
        )
      else
        const CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
        ),
      const SizedBox(height: 20),
    ];
  }
}
