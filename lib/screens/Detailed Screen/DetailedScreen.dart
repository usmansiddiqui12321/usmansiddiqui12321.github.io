import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/screens/mainScreen/main_screen.dart';
import 'package:video_player/video_player.dart';

class DetailedPage extends StatefulWidget {
  final String videoPath, title;
  DetailedPage({required this.videoPath, required this.title});

  @override
  _DetailedPageState createState() => _DetailedPageState();
}

class _DetailedPageState extends State<DetailedPage> {
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
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    if (controller.value.isInitialized)
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height * .74,
                          width: MediaQuery.of(context).size.width *
                              .75, //perfect for WEB
                          child: VideoPlayer(controller),
                        ),
                      )
                    else
                      const CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                      ),
                    const SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          controller.value.isPlaying
                              ? controller.pause()
                              : controller.play();
                        });
                      },
                      child: CircleAvatar(
                        backgroundColor: primaryColor,
                        child: Icon(
                          controller.value.isPlaying
                              ? Icons.pause
                              : Icons.play_arrow,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: size.width * .2,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: secondaryColor,
                  border: Border.all(
                    color: primaryColor,
                    width: 2,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
