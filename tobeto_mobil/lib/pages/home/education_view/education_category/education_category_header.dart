import 'package:flutter/material.dart';
import 'package:tobeto_mobil/core/widgets/container_widget.dart';

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
      child: ContainerWidget(
        padding: EdgeInsets.zero,
        child: ListTile(
          title: Text(
            title,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          trailing: InkWell(
            splashColor: Colors.transparent,
            onTap: () {
              // Navigator.of(context).push(
              //   MaterialPageRoute(
              //     builder: (context) => const ProfileScreen(),
              //   ),
              // );
            },
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "See All",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  Icon(
                    Icons.keyboard_double_arrow_right_outlined,
                    color: Theme.of(context).iconTheme.color,
                  ),
                ]),
          ),
        ),
      ),
      // child: Card(
      //   child: ListTile(
      //     title: Text(title),
      //     trailing: InkWell(
      //       splashColor: Colors.transparent,
      //       onTap: () {
      //         // Navigator.of(context).push(
      //         //   MaterialPageRoute(
      //         //     builder: (context) => const ProfileScreen(),
      //         //   ),
      //         // );
      //       },
      //       child: const Column(
      //           mainAxisAlignment: MainAxisAlignment.center,
      //           children: [
      //             Text("See All"),
      //             Icon(
      //               Icons.keyboard_double_arrow_right_outlined,
      //             ),
      //           ]),
      //     ),
      //   ),
      // ),
    );
  }
}
