import 'package:flutter/material.dart';

extension SeperatedColumn on Column {
  Column seperated({
    double height = 0,
  }) {
    children._seperated(height: height);
    return this;
  }
}

extension SeperatedRow on Row {
  Row seperated({
    double width = 0,
  }) {
    children._seperated(width: width);
    return this;
  }
}

extension on List<Widget> {
  List<Widget> _seperated({
    double height = 0,
    double width = 0,
  }) {
    for (int i = 0; i < length - 1; i += 2) {
      insert(i + 1, SizedBox(height: height, width: width));
    }
    return this;
  }
}

extension PascalCase on String {
  String toCapitalized() {
    return length > 0
        ? '${this[0].toUpperCase()}${substring(1).toLowerCase()}'
        : '';
  }

  String toTitleCase() {
    return replaceAll(RegExp(' +'), ' ')
        .split(' ')
        .map((str) => str.toCapitalized())
        .join(' ');
  }
}
