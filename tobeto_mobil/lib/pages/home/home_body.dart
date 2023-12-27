import 'package:flutter/material.dart';
import 'package:tobeto_mobil/constants/image_text.dart';
import 'package:tobeto_mobil/models/education_model.dart';
import 'package:tobeto_mobil/pages/home/education_view/education_list.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final TabController controller;

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: controller,
      children: <Widget>[
        Container(),
        EducationList(
          educationList: [
            EducationModel(
              id: "1",
              title: "something lovely",
              time: "some time",
              thumbnail: logo,
            ),
            EducationModel(
              id: "2",
              title: "something lovely2",
              time: "some time ago",
              thumbnail: logoT,
            ),
          ],
        ),
        Container(),
        Container(),
        Container(),
      ],
    );
  }
}
