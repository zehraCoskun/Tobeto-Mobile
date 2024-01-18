import 'package:flutter/material.dart';

class InfoTitleWidget extends StatelessWidget {
  const InfoTitleWidget({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 22, color: Colors.black),
    );
  }
}
