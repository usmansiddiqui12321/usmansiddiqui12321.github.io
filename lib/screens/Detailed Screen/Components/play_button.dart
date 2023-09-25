import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:video_player/video_player.dart';

class PlayButton extends StatefulWidget {
  const PlayButton({super.key, required this.controller});
  final VideoPlayerController controller;
  @override
  State<PlayButton> createState() => _PlayButtonState();
}

class _PlayButtonState extends State<PlayButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.controller.value.isPlaying
              ? widget.controller.pause()
              : widget.controller.play();
        });
      },
      child: CircleAvatar(
        backgroundColor: primaryColor,
        child: Icon(
          widget.controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
          color: Colors.black,
        ),
      ),
    );
  }
}