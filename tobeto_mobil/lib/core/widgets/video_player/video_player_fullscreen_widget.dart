import 'package:flutter/material.dart';
import 'package:tobeto_mobil/core/widgets/video_player/video_player_overlay_widget.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerFullscreenWidget extends StatelessWidget {
  const VideoPlayerFullscreenWidget({
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
        : const Center(
            child: CircularProgressIndicator(),
          );
  }

  Widget buildVideo() {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        buildVideoPlayer(),
        VideoPlayerOverlayWidget(
          controller: controller,
        ),
      ],
    );
  }

  Widget buildVideoPlayer() {
    return buildFullscreen(
      child: AspectRatio(
        aspectRatio: controller.value.aspectRatio,
        child: VideoPlayer(controller),
      ),
    );
  }

  Widget buildFullscreen({required Widget child}) {
    final size = controller.value.size;
    final width = size.width;
    final height = size.height;

    return FittedBox(
      fit: BoxFit.cover,
      child: SizedBox(
        height: height,
        width: width,
        child: child,
      ),
    );
  }
}
