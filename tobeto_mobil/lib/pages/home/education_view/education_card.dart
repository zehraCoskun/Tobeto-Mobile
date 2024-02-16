import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tobeto_mobil/core/widgets/shadows.dart';
import 'package:tobeto_mobil/models/firebase_models/education_model.dart';
import 'package:tobeto_mobil/pages/home/main_view/widgets/main_page_pin_container.dart';

class EducationCard extends StatelessWidget {
  const EducationCard({
    Key? key,
    required this.education,
  }) : super(key: key);

  final EducationModel education;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).pushNamed(
        "/details",
        arguments: education,
      ),
      child: AspectRatio(
        aspectRatio: 1 / 1,
        child: Container(
          margin: const EdgeInsets.only(top: 20, left: 10, right: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Theme.of(context).drawerTheme.backgroundColor,
            boxShadow: [
              containerBasicShadow(),
              containerBasicShadow(),
              containerBasicShadow(),
            ],
          ),
          child: ListView(
            primary: false,
            children: <Widget>[
              buildHeader(context),
              buildBody(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildHeader(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        AspectRatio(
          aspectRatio: 3 / 2,
          child: Padding(
            padding: const EdgeInsets.all(1.0),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              child: Image.network(
                education.thumbnail,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
        ),
        MainPagePinContainer(
          widget: Text(
            education.totalDuration,
            style: Theme.of(context).textTheme.titleSmall,
            textAlign: TextAlign.end,
          ),
        ),
      ],
    );
  }

  Widget buildBody(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 2,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            education.title,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Row(
            children: [
              Text(
                "Bitiş tarihi : ${DateFormat.yMd().format(education.endDate)}",
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
