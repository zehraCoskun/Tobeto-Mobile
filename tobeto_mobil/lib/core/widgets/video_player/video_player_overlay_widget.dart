import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerOverlayWidget extends StatelessWidget {
  const VideoPlayerOverlayWidget({
    Key? key,
    required this.controller,
    this.onClickedFullScreen,
  }) : super(key: key);

  final VideoPlayerController controller;
  final VoidCallback? onClickedFullScreen;

  String getPosition() {
    final duration = Duration(
      milliseconds: controller.value.position.inMilliseconds.round(),
    );

    return [duration.inMinutes, duration.inSeconds]
        .map((seg) => seg.remainder(60).toString().padLeft(2, '0'))
        .join(':');
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        controller.value.isPlaying ? controller.pause() : controller.play();
      },
      child: Stack(
        children: <Widget>[
          buildPlay(),
          Positioned(
            left: 8,
            bottom: 28,
            child: AnimatedOpacity(
              opacity: controller.value.isPlaying ? 0 : 1,
              duration: controller.value.isPlaying
                  ? const Duration(seconds: 1)
                  : const Duration(),
              child: Text(getPosition()),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: AnimatedOpacity(
              opacity: controller.value.isPlaying ? 0 : 1,
              duration: controller.value.isPlaying
                  ? const Duration(seconds: 1)
                  : const Duration(),
              child: Row(
                children: [
                  Expanded(child: buildIndicator()),
                  const SizedBox(width: 12),
                  GestureDetector(
                    onTap: () {
                      controller.setVolume(
                          controller.value.volume == 0.0 ? 1.0 : 0.0);
                    },
                    child: Icon(
                      controller.value.volume == 0
                          ? Icons.volume_off
                          : Icons.volume_up,
                    ),
                  ),
                  GestureDetector(
                    onTap: onClickedFullScreen,
                    child: const Icon(
                      Icons.fullscreen,
                      color: Color.fromARGB(255, 48, 45, 45),
                      size: 28,
                    ),
                  ),
                  const SizedBox(width: 8),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildIndicator() {
    return Container(
      margin: const EdgeInsets.all(8).copyWith(right: 0),
      height: 16,
      child: VideoProgressIndicator(
        controller,
        allowScrubbing: true,
      ),
    );
  }

  Widget buildPlay() {
    return controller.value.isPlaying
        ? Container(
            color: Colors.transparent,
          )
        : Container(
            color: Colors.black26,
            child: const Center(
              child: Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 70,
              ),
            ),
          );
  }
}
