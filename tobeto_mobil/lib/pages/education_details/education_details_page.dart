import 'package:flutter/material.dart';
import 'package:tobeto_mobil/core/widgets/video_player/video_player_portrait_widget.dart';
import 'package:tobeto_mobil/models/firebase_models/education_model.dart';

class EducationDetailsPage extends StatelessWidget {
  const EducationDetailsPage({
    Key? key,
    required this.education,
  }) : super(key: key);

  final EducationModel education;

  @override
  Widget build(BuildContext context) {
    //final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        titleTextStyle: const TextStyle(
          fontSize: 18,
          overflow: TextOverflow.fade,
        ),
        title: Text(education.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          VideoPlayerPortraitWidget(url: education.content),
          const Spacer(),
          const Divider(
            indent: 10,
            endIndent: 10,
            thickness: 0.8,
          ),
          Expanded(
            flex: 5,
            child: ListView.builder(
              itemCount: education.classes.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 5,
                  ),
                  height: 50,
                  color: Colors.black,
                  child: Text(
                    education.classes[index].name,
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
