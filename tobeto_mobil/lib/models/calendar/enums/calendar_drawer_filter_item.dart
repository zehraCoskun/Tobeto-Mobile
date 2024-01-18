import 'package:flutter/material.dart';

enum CalendarDrawerFilterItem {
  events,
  tasks,
  birthdays,
  holidays;

  @override
  String toString() {
    switch (this) {
      case CalendarDrawerFilterItem.events:
        return "Events";
      case CalendarDrawerFilterItem.tasks:
        return "Tasks";
      case CalendarDrawerFilterItem.birthdays:
        return "Birthdays";
      case CalendarDrawerFilterItem.holidays:
        return "Holidays";
    }
  }

  Color toColor() {
    switch (this) {
      case CalendarDrawerFilterItem.events:
        return Colors.deepPurple.shade700;
      case CalendarDrawerFilterItem.tasks:
        return Colors.blue.shade800;
      case CalendarDrawerFilterItem.birthdays:
        return Colors.lightGreen.shade800;
      case CalendarDrawerFilterItem.holidays:
        return Colors.green.shade900;
    }
  }
}
