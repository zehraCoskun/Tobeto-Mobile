import 'package:flutter/material.dart';
import 'package:tobeto_mobil/core/widgets/video_player/video_player_overlay_widget.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerWidget extends StatelessWidget {
  const VideoPlayerWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final VideoPlayerController controller;

  @override
  Widget build(BuildContext context) {
    return controller.value.isInitialized
        ? Container(
            alignment: Alignment.topCenter,
            child: buildVideo(),
          )
        : const SizedBox(
            height: 200,
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
  }

  Widget buildVideo() {
    return Stack(
      children: <Widget>[
        buildVideoPlayer(),
        Positioned.fill(
          child: VideoPlayerOverlayWidget(
            controller: controller,
          ),
        ),
      ],
    );
  }

  Widget buildVideoPlayer() {
    return AspectRatio(
      aspectRatio: controller.value.aspectRatio,
      child: VideoPlayer(controller),
    );
  }
}
