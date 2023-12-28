import 'package:flutter/material.dart';
import 'package:tobeto_mobil/core/widgets/container_widget.dart';
import 'package:tobeto_mobil/pages/profile/profile_screen.dart';

class EducationCategoryHeader extends StatelessWidget {
  const EducationCategoryHeader({
    Key? key,
    required this.title,
    this.isDown = true,
  }) : super(key: key);

  final String title;
  final bool isDown;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ContainerWidget(
        padding: EdgeInsets.zero,
        child: ListTile(
          leading: Icon(
            isDown ? Icons.keyboard_arrow_down_outlined : Icons.keyboard_arrow_right_outlined,
            color: Theme.of(context).iconTheme.color,
          ),
          title: Text(
            title,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          trailing: InkWell(
            splashColor: Colors.transparent,
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const ProfileScreen(),
                ),
              );
            },
            child: Icon(
              Icons.keyboard_double_arrow_right_outlined,
              color: Theme.of(context).iconTheme.color,
            ),
          ),
        ),
      ),
    );
  }
}
