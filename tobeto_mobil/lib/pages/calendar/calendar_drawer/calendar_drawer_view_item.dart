import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

enum CalendarDrawerViewItem {
  schedule,
  day,
  days,
  week,
  month;

  @override
  String toString() {
    switch (this) {
      case CalendarDrawerViewItem.schedule:
        return "Schedule";
      case CalendarDrawerViewItem.day:
        return "Day";
      case CalendarDrawerViewItem.days:
        return "3 days";
      case CalendarDrawerViewItem.week:
        return "Week";
      case CalendarDrawerViewItem.month:
        return "Month";
    }
  }

  IconData toIconData() {
    switch (this) {
      case CalendarDrawerViewItem.schedule:
        return Icons.view_agenda_outlined;
      case CalendarDrawerViewItem.day:
        return Icons.view_day_outlined;
      case CalendarDrawerViewItem.days:
        return Icons.view_column_outlined;
      case CalendarDrawerViewItem.week:
        return Icons.calendar_view_week_outlined;
      case CalendarDrawerViewItem.month:
        return Icons.calendar_view_month_outlined;
    }
  }

  CalendarView toView() {
    switch (this) {
      case CalendarDrawerViewItem.schedule:
        return CalendarView.schedule;
      case CalendarDrawerViewItem.day:
        return CalendarView.day;
      case CalendarDrawerViewItem.days:
        return CalendarView.timelineDay;
      case CalendarDrawerViewItem.week:
        return CalendarView.week;
      case CalendarDrawerViewItem.month:
        return CalendarView.month;
    }
  }
}
