import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/screens/mainScreen/main_screen.dart';
import 'package:video_player/video_player.dart';

import '../../responsive.dart';

class DetailedPage extends StatefulWidget {
  final String videoPath, title, description;
  const DetailedPage(
      {super.key, required this.videoPath,
      required this.title,
      required this.description});

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
            children: [
              Expanded(
                flex: 2,
                child: Column(
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
              const SizedBox(
                width: 10,
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
                height: size.height * .5,
                width: size.width * .5,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Column(
                    children: [
                      Text(
                        "Description",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      const SizedBox(height: 20),
                      Text(
                        widget.description,
                        maxLines: Responsive.isMobileLarge(context) ? 4 : 10,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(height: 1.2),
                      ),
                      SizedBox(height: 20),
                      GithubButton(onPressed: () {})
                    ],
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

class GithubButton extends StatelessWidget {
  final VoidCallback onPressed;

  const GithubButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.loose,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          primary: primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          elevation: 4.0,
        ),
        child: SizedBox(
          width: MediaQuery.of(context).size.width * .13,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/icons/github.svg',
                height: 24.0,
                width: 24.0,
                color: secondaryColor,
              ),
              const SizedBox(width: 4.0),
              const Flexible(
                child: Text(
                  'Github Link',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: secondaryColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
