import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tobeto_mobil/core/widgets/video_player/video_player_overlay_widget.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerWidget extends StatefulWidget {
  const VideoPlayerWidget({
    Key? key,
    required this.content,
    this.isFullscreen = false,
  }) : super(key: key);

  final String content;
  final bool isFullscreen;

  @override
  State<VideoPlayerWidget> createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  late VideoPlayerController controller;

  @override
  void initState() {
    super.initState();
    controller =
        VideoPlayerController.networkUrl(Uri.parse(widget.content))
          ..addListener(() => setState(() {}))
          ..setLooping(false)
          ..initialize();
  }

  @override
  void dispose() {
    controller.dispose();
    _dispose();
    super.dispose();
  }

  void _dispose() async {
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    await SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: SystemUiOverlay.values,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: widget.isFullscreen ? StackFit.expand : StackFit.loose,
      children: <Widget>[
        buildVideoPlayer(),
        Positioned.fill(
          child: VideoPlayerOverlayWidget(
            controller: controller,
            onClickedFullScreen: () {
              setOrientation(
                isFullscreen: !widget.isFullscreen,
              );
            },
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

  void setOrientation({required bool isFullscreen}) {
    if (isFullscreen) {
      SystemChrome.setEnabledSystemUIMode(
        SystemUiMode.manual,
        overlays: [],
      );
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.landscapeRight,
      ]);
    } else {
      SystemChrome.setEnabledSystemUIMode(
        SystemUiMode.manual,
        overlays: SystemUiOverlay.values,
      );
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ]);
    }
  }
}
