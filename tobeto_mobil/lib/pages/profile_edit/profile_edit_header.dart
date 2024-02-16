import 'package:flutter/material.dart';

class ProfileEditHeader extends StatelessWidget {
  const ProfileEditHeader({
    super.key,
    required this.title,
    this.icon,
  });
  final String title;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(fontSize: 22, color: Colors.black),
        ),
        icon ?? const SizedBox()
      ],
    );
  }
}
