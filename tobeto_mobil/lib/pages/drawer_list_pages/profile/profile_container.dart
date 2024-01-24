import 'package:flutter/material.dart';
import 'package:tobeto_mobil/core/widgets/basic_shadow.dart';

class ProfileContainer extends StatelessWidget {
  const ProfileContainer({
    Key? key,
    required this.child,
    required this.title,
    this.height,
  }) : super(key: key);

  final Widget child;
  final double? height;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [basicShadow()],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold),
            ),
            const Divider(),
            child,
          ],
        ),
      ),
    );
  }
}
