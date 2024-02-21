import 'package:flutter/material.dart';
import 'package:tobeto_mobil/core/widgets/video_player/video_player_widget.dart';
import 'package:tobeto_mobil/models/firebase_models/education_model.dart';

class EducationDetailsPage extends StatelessWidget {
  const EducationDetailsPage({
    Key? key,
    required this.education,
  }) : super(key: key);

  final EducationModel education;

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
        content: education.content,
        isFullscreen: true,
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
        title: Text(education.title),
      ),
      body: VideoPlayerWidget(
        content: education.content,
      ),
    );
  }
}
