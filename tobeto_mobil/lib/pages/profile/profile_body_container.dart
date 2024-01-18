//container
import 'package:flutter/material.dart';

class ProfileBodyContainer extends StatelessWidget {
  const ProfileBodyContainer({
    super.key,
    required this.title,
    required this.body,
  });
  final String title;
  final Widget body;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold),
          ),
          const Divider(),
          body,
        ],
      ),
    );
  }
}
