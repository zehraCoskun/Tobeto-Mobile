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

class _EducationCategoryState extends State<EducationCategory>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  bool isVisible = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void handleVisibility() {
    setState(() {
      isVisible = !isVisible;
      if (isVisible) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    });
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
          AnimatedSize(
            duration: const Duration(milliseconds: 100),
            curve: Curves.decelerate,
            child: Visibility(
              visible: isVisible,
              child: const EducationCategoryBody(),
            ),
          ),
        ],
      ),
    );
  }
}
