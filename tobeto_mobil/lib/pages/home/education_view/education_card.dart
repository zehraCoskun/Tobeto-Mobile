import 'package:flutter/material.dart';
import 'package:tobeto_mobil/models/education_model.dart';

class EducationCard extends StatelessWidget {
  const EducationCard({
    Key? key,
    required this.education,
  }) : super(key: key);

  final EducationModel education;

  @override
  Widget build(BuildContext context) {
    //final size = MediaQuery.of(context).size;

    return AspectRatio(
      aspectRatio: 1 / 1,
      child: Container(
        margin: const EdgeInsets.only(top: 20, left: 30, right: 30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Theme.of(context).cardColor,
        ),
        child: ListView(
          primary: false,
          children: <Widget>[
            buildHeader(),
            buildFooter(),
          ],
        ),
      ),
    );
  }

  Widget buildHeader() {
    return AspectRatio(
      aspectRatio: 3 / 2,
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            child: Image.asset("assets/images/ders1.jpg")),
      ),
    );
  }

  Widget buildFooter() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            education.title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.italic,
            ),
          ),
          Text(
            education.time,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontStyle: FontStyle.italic,
            ),
          ),
        ],
      ),
    );
  }
}
