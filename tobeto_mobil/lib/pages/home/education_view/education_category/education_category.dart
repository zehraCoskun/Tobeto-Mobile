import 'package:flutter/material.dart';
import 'package:tobeto_mobil/pages/home/education_view/education_category/education_category_body.dart';
import 'package:tobeto_mobil/pages/home/education_view/education_category/education_category_header.dart';

class EducationCategory extends StatefulWidget {
  const EducationCategory({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  State<EducationCategory> createState() => _EducationCategoryState();
}

class _EducationCategoryState extends State<EducationCategory> {
  bool isVisible = false;

  void handleVisibility() {
    if (isVisible) {
      setState(() {
        isVisible = false;
      });
    } else {
      setState(() {
        isVisible = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              handleVisibility();
            },
            child: EducationCategoryHeader(
              title: widget.title,
              isDown: !isVisible,
            ),
          ),
          Visibility(
            visible: isVisible,
            child: const EducationCategoryBody(),
          ),
        ],
      ),
    );
  }
}
