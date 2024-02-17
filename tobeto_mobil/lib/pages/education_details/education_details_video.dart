import 'package:flutter/material.dart';
import 'package:tobeto_mobil/core/widgets/video_player/video_player_widget.dart';
import 'package:video_player/video_player.dart';

class EducationDetailsVideo extends StatefulWidget {
  const EducationDetailsVideo({
    Key? key,
    required this.url,
  }) : super(key: key);

  final String url;

  @override
  State<EducationDetailsVideo> createState() => _EducationDetailsVideoState();
}

class _EducationDetailsVideoState extends State<EducationDetailsVideo> {
  late VideoPlayerController controller;

  @override
  void initState() {
    super.initState();
    controller = VideoPlayerController.networkUrl(
      Uri.parse(widget.url),
    )
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
    final isMuted = controller.value.volume == 0;

    return Column(
      children: [
        VideoPlayerWidget(controller: controller),
        if (controller.value.isInitialized)
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.red,
            child: IconButton(
              onPressed: () => controller.setVolume(isMuted ? 1 : 0),
              icon: Icon(
                isMuted ? Icons.volume_mute : Icons.volume_up,
              ),
            ),
          ),
      ],
    );
  }
}
