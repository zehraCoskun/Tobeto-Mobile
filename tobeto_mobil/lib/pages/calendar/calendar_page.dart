import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:tobeto_mobil/constants/image_text.dart';
import 'package:tobeto_mobil/models/calendar/event_model.dart';
import 'package:tobeto_mobil/pages/calendar/calendar_drawer/calendar_drawer.dart';
import 'package:tobeto_mobil/pages/calendar/calendar_event/calendar_event_page.dart';

class CalendarPage extends StatelessWidget {
  const CalendarPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const CalendarDrawer(),
      body: SfCalendar(
        view: CalendarView.schedule,
        showDatePickerButton: true,
        scheduleViewSettings: const ScheduleViewSettings(
          weekHeaderSettings: WeekHeaderSettings(
            weekTextStyle: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        scheduleViewMonthHeaderBuilder: (context, details) {
          return Image.asset(
            monthMap[details.date.month]!,
            fit: BoxFit.cover,
          );
        },
        backgroundColor: Colors.black,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => CalendarEventPage(
                event: EventModel(
                  title: "",
                  description: "",
                  from: DateTime.now(),
                  to: DateTime.now(),
                ),
              ),
            ),
          );
        },
        shape: const CircleBorder(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
