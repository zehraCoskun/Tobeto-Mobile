import 'package:flutter/material.dart';
import 'package:tobeto_mobil/core/widgets/video_player/video_player_widget.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerPortraitWidget extends StatefulWidget {
  const VideoPlayerPortraitWidget({
    Key? key,
    required this.url,
  }) : super(key: key);

  final String url;

  @override
  State<VideoPlayerPortraitWidget> createState() =>
      _VideoPlayerPortraitWidgetState();
}

class _VideoPlayerPortraitWidgetState extends State<VideoPlayerPortraitWidget> {
  late VideoPlayerController controller;

  @override
  void initState() {
    super.initState();

    controller = VideoPlayerController.networkUrl(Uri.parse(widget.url))
      ..addListener(() => setState(() {}))
      ..setLooping(false)
      ..initialize();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return VideoPlayerWidget(
      controller: controller,
    );
  }
}
