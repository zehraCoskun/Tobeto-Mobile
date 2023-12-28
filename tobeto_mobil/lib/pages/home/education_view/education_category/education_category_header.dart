import 'package:flutter/material.dart';

class EducationCategoryHeader extends StatelessWidget {
  const EducationCategoryHeader({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Card(
        child: ListTile(
          title: Text(title),
          trailing: InkWell(
            splashColor: Colors.transparent,
            onTap: () {
              // Navigator.of(context).push(
              //   MaterialPageRoute(
              //     builder: (context) => const ProfileScreen(),
              //   ),
              // );
            },
            child: const Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text("See All"),
              Icon(
                Icons.keyboard_double_arrow_right_outlined,
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
