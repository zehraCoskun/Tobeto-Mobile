import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerOverlayWidget extends StatelessWidget {
  const VideoPlayerOverlayWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final VideoPlayerController controller;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        controller.value.isPlaying ? controller.pause() : controller.play();
      },
      child: Stack(
        children: <Widget>[
          buildPlay(),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: buildIndicator(),
          ),
        ],
      ),
    );
  }

  Widget buildPlay() {
    return controller.value.isPlaying
        ? Container(
            color: Colors.transparent,
          )
        : Container(
            alignment: Alignment.center,
            color: Colors.black26,
            child: const Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 80,
            ),
          );
  }

  Widget buildIndicator() {
    return VideoProgressIndicator(
      controller,
      allowScrubbing: true,
    );
  }
}
