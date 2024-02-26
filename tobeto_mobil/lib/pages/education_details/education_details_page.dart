import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tobeto_mobil/core/widgets/background/secondary_background.dart';
import 'package:tobeto_mobil/core/widgets/video_player/video_player_widget.dart';
import 'package:tobeto_mobil/models/education/education_model.dart';
import 'package:tobeto_mobil/pages/education_details/education_details_content_card.dart';
import 'package:video_player/video_player.dart';

class EducationDetailsPage extends StatefulWidget {
  const EducationDetailsPage({
    Key? key,
    required this.education,
  }) : super(key: key);

  final EducationModel education;

  @override
  State<EducationDetailsPage> createState() => _EducationDetailsPageState();
}

class _EducationDetailsPageState extends State<EducationDetailsPage> {
  late VideoPlayerController controller;

  @override
  void initState() {
    super.initState();
    controller = VideoPlayerController.networkUrl(Uri.parse(widget.education.content.first.url))
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

  void setSource(String url) async {
    await controller.dispose();
    controller = VideoPlayerController.networkUrl(Uri.parse(url))
      ..addListener(() => setState(() {}))
      ..setLooping(false)
      ..initialize();
  }

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        final isPortrait = orientation == Orientation.portrait;

        if (!isPortrait) {
          return buildFullscreen();
        }
        return buildPortrait();
      },
    );
  }

  Widget buildFullscreen() {
    return Scaffold(
      body: VideoPlayerWidget(
        content: widget.education.content.first.url,
        isFullscreen: true,
        controller: controller,
      ),
    );
  }

  Widget buildPortrait() {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        titleTextStyle: const TextStyle(
          fontSize: 18,
          overflow: TextOverflow.fade,
        ),
        title: Text(widget.education.title),
      ),
      body: SecondaryBackgroundWidget(
        child: Column(
          children: <Widget>[
            VideoPlayerWidget(
              content: widget.education.content.first.url,
              controller: controller,
            ),
            const Divider(),
            Expanded(
              child: ListView.builder(
                itemCount: widget.education.content.length,
                itemBuilder: (context, index) {
                  return EducationDetailsContentCard(
                    content: widget.education.content[index],
                    onTap: setSource,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
