import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:tobeto_mobil/constants/image_text.dart';
import 'package:tobeto_mobil/pages/drawer_list_pages/calendar/calendar_drawer/calendar_drawer.dart';
import 'package:tobeto_mobil/models/calendar/meeting_data_source.dart';
import 'package:tobeto_mobil/models/calendar/meeting_model.dart';

class CalendarPage extends StatelessWidget {
  const CalendarPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final calendarController = CalendarController();

    return Scaffold(
      appBar: AppBar(),
      drawer: CalendarDrawer(calendarController: calendarController),
      body: SfCalendar(
        controller: calendarController,
        firstDayOfWeek: 1,
        showWeekNumber: true,
        showNavigationArrow: true,
        showDatePickerButton: true,
        initialSelectedDate: DateTime.now(),
        view: CalendarView.schedule,
        dataSource: MeetingDataSource(getDataSource()),
        weekNumberStyle: WeekNumberStyle(
          backgroundColor: Colors.grey.shade600,
        ),
        monthViewSettings: buildMonthViewSettings(),
        scheduleViewSettings: buildScheduleViewSettings(),
        scheduleViewMonthHeaderBuilder: (context, details) =>
            buildMonthViewHeader(details),
      ),
    );
  }

  MonthViewSettings buildMonthViewSettings() {
    return const MonthViewSettings(
      appointmentDisplayMode: MonthAppointmentDisplayMode.appointment,
    );
  }

  Widget buildMonthViewHeader(ScheduleViewMonthHeaderDetails details) {
    return Image.asset(
      monthMap[details.date.month]!,
      fit: BoxFit.cover,
    );
  }

  ScheduleViewSettings buildScheduleViewSettings() {
    return const ScheduleViewSettings(
      weekHeaderSettings: WeekHeaderSettings(
        weekTextStyle: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }

  List<MeetingModel> getDataSource() {
    final List<MeetingModel> meetings = <MeetingModel>[];
    final DateTime today = DateTime.now();

    meetings.addAll([
      MeetingModel(
        eventName: "Freelance Work",
        from: DateTime.now(),
        to: DateTime(today.year, today.month, today.day + 2),
        background: const Color.fromARGB(255, 207, 27, 27),
        isAllDay: true,
      ),
      MeetingModel(
        eventName: "Conference",
        from: DateTime(today.year, today.month, today.day, 9, 0, 0),
        to: DateTime(today.year, today.month, today.day, 11, 0, 0),
        background: const Color(0xFF0F8644),
        isAllDay: false,
      ),
      MeetingModel(
        eventName: "Meeting",
        from: DateTime(today.year, today.month, today.day, 13, 0, 0),
        to: DateTime(today.year, today.month, today.day, 14, 0, 0),
        background: const Color(0xFF0F8644),
        isAllDay: false,
      ),
    ]);

    return meetings;
  }
}
