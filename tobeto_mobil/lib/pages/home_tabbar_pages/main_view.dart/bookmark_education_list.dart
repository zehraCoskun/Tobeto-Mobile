import 'package:flutter/material.dart';
import 'package:tobeto_mobil/models/education/education_models.dart';
import 'package:tobeto_mobil/pages/home_tabbar_pages/main_view.dart/widgets/main_page_content.dart';

class BookmarkEducationList extends StatelessWidget {
  const BookmarkEducationList({
    Key? key,
    required this.educationList, required this.icon,
  }) : super(key: key);

  final List<EducationModels> educationList;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.5 / 1,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: educationList.length,
        itemBuilder: (context, index) {
          return SizedBox(
            width: 300,
            child: MainPageContent(
              icon: icon,
              educationModel: educationList[index],
            ),
          );
        },
      ),
    );
  }
}
