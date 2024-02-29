import 'package:flutter/material.dart';
import 'package:tobeto_mobil/constants/route_names.dart';
import 'package:tobeto_mobil/core/widgets/container_widget.dart';
import 'package:tobeto_mobil/pages/home/education_view/education_category/education_category_item.dart';

class EducationCategoryHeader extends StatelessWidget {
  const EducationCategoryHeader({
    Key? key,
    required this.title,
    this.isDown = true,
    required this.category,
  }) : super(key: key);

  final String title;
  final EducationCategoryItem category;
  final bool isDown;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ContainerWidget(
        padding: EdgeInsets.zero,
        child: ListTile(
          leading: Icon(
            isDown
                ? Icons.keyboard_arrow_right_outlined
                : Icons.keyboard_arrow_down_outlined,
            color: Theme.of(context).iconTheme.color,
          ),
          title: Text(
            title,
            overflow: TextOverflow.fade,
            maxLines: 1,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          trailing: IconButton(
            icon: Icon(
              Icons.keyboard_double_arrow_right_outlined,
              color: Theme.of(context).iconTheme.color,
            ),
            onPressed: () {
              Navigator.of(context).pushNamed(
                Routes.CATEGORY,
                arguments: category,
              );
            },
          ),
        ),
      ),
    );
  }
}
