import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tobeto_mobil/core/widgets/video_player/video_player_overlay_widget.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerWidget extends StatefulWidget {
  const VideoPlayerWidget({
    Key? key,
    required this.url,
  }) : super(key: key);

  final String url;

  @override
  State<VideoPlayerWidget> createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  late VideoPlayerController controller;
  double opacity = 0;
  bool isFullscreen = false;
  Orientation target = Orientation.portrait;

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
    return OrientationBuilder(
      builder: (context, orientation) {
        final isPortrait = orientation == Orientation.portrait;

        setOrientation(isPortrait);

        return Stack(
          fit: isPortrait ? StackFit.loose : StackFit.expand,
          children: <Widget>[
            buildVideoPlayer(),
            Positioned.fill(
              child: VideoPlayerOverlayWidget(
                controller: controller,
                onClickedFullScreen: () {
                  target =
                      isPortrait ? Orientation.landscape : Orientation.portrait;

                  if (isPortrait) {
                    SystemChrome.setPreferredOrientations([
                      DeviceOrientation.landscapeLeft,
                      DeviceOrientation.landscapeRight,
                    ]);
                  } else {
                    SystemChrome.setPreferredOrientations([
                      DeviceOrientation.portraitUp,
                      DeviceOrientation.portraitDown,
                    ]);
                  }
                },
              ),
            ),
          ],
        );
      },
    );
  }

  Widget buildVideoPlayer() {
    return AspectRatio(
      aspectRatio: controller.value.aspectRatio,
      child: VideoPlayer(controller),
    );
  }

  void setOrientation(bool isPortrait) {
    if (isPortrait) {
      SystemChrome.setEnabledSystemUIMode(
        SystemUiMode.manual,
        overlays: SystemUiOverlay.values,
      );
    } else {
      SystemChrome.setEnabledSystemUIMode(
        SystemUiMode.manual,
        overlays: [],
      );
    }
  }
}
