import 'package:flutter/material.dart';

class CalendarDrawerTile extends StatelessWidget {
  const CalendarDrawerTile({
    Key? key,
    required this.iconData,
    this.color,
    required this.title,
  }) : super(key: key);

  final IconData iconData;
  final Color? color;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      style: ListTileStyle.drawer,
      leading: Icon(
        iconData,
        color: color ?? Colors.white,
      ),
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
