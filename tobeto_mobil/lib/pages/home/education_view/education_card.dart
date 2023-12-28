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
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: Theme.of(context).drawerTheme.backgroundColor),
        child: ListView(
          primary: false,
          children: <Widget>[
            buildHeader(),
            buildFooter(context),
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
          child: Image.asset(
            education.thumbnail,
            //"assets/images/ders1.jpg",
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
    );
  }

  Widget buildFooter(BuildContext context) {
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
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Text(
            education.time,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
