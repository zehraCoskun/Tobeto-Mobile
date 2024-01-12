import 'package:flutter/material.dart';
import 'package:tobeto_mobil/models/education/education_model.dart';
import 'package:tobeto_mobil/pages/detail/education_detail_page/education_detail_page.dart';

class EducationCard extends StatelessWidget {
  const EducationCard({
    Key? key,
    required this.education,
  }) : super(key: key);

  final EducationModel education;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1 / 1,
      child: Container(
        margin: const EdgeInsets.only(top: 20, left: 30, right: 30),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Theme.of(context).drawerTheme.backgroundColor),
        child: ListView(
          primary: false,
          children: <Widget>[
            buildHeader(),
            buildBody(context),
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
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
    );
  }

  Widget buildBody(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => EducationDetailPage(education: education),
          ),
        );
      },
      child: Padding(
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
              "",
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}
