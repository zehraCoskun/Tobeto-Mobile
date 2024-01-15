import 'package:flutter/material.dart';

class CalendarDrawerViewTile extends StatelessWidget {
  const CalendarDrawerViewTile({
    Key? key,
    required this.iconData,
    required this.title,
  }) : super(key: key);

  final IconData iconData;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      style: ListTileStyle.drawer,
      leading: Icon(
        iconData,
        color: Colors.white,
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
