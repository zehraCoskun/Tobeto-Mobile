import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tobeto_mobil/core/widgets/video_player/video_player_fullscreen_widget.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerLandscapeWidget extends StatefulWidget {
  const VideoPlayerLandscapeWidget({
    Key? key,
    required this.url,
  }) : super(key: key);

  final String url;

  @override
  State<VideoPlayerLandscapeWidget> createState() =>
      _VideoPlayerLandscapeWidgetState();
}

class _VideoPlayerLandscapeWidgetState
    extends State<VideoPlayerLandscapeWidget> {
  late VideoPlayerController controller;

  @override
  void initState() {
    super.initState();

    controller = VideoPlayerController.networkUrl(Uri.parse(widget.url))
      ..addListener(() => setState(() {}))
      ..setLooping(false)
      ..initialize();

    setLandscape();
  }

  @override
  void dispose() {
    controller.dispose();
    setAllOrientations();
    super.dispose();
  }

  Future setLandscape() async {
    await SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: [],
    );
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
  }

  Future setAllOrientations() async {
    await SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: SystemUiOverlay.values,
    );
    await SystemChrome.setPreferredOrientations(DeviceOrientation.values);
  }

  @override
  Widget build(BuildContext context) {
    return VideoPlayerFullscreenWidget(
      controller: controller,
    );
  }
}
