import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:tobeto_mobil/pages/calendar/calendar_drawer/calendar_drawer_tile.dart';
import 'package:tobeto_mobil/pages/calendar/calendar_drawer/calendar_drawer_view_item.dart';

class CalendarDrawer extends StatelessWidget {
  const CalendarDrawer({
    Key? key,
    this.calendarController,
  }) : super(key: key);

  final CalendarController? calendarController;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const SizedBox(height: 50),
          const Text(
            "Tobeto Calendar",
            textAlign: TextAlign.center,
          ),
          ...buildDrawerViewTiles(context),
          const Spacer(),
          ...buildDrawerFooter(context),
        ],
      ),
    );
  }

  Iterable<Widget> buildDrawerViewTiles(BuildContext context) {
    return CalendarDrawerViewItem.values.map((item) {
      return InkWell(
        onTap: () async {
          if (calendarController != null) {
            calendarController!.view = item.toView();
            Navigator.of(context).pop();
          }
        },
        child: CalendarDrawerTile(
          iconData: item.toIconData(),
          title: item.toString(),
        ),
      );
    });
  }

  Iterable<Widget> buildDrawerFooter(BuildContext context) {
    return [
      InkWell(
        onTap: () {},
        child: const CalendarDrawerTile(
          iconData: Icons.settings_outlined,
          title: "Settings",
        ),
      ),
      InkWell(
        onTap: () {
          Scaffold.of(context).closeDrawer();
          Future.delayed(
            const Duration(milliseconds: 300),
            Navigator.of(context).pop,
          );
        },
        child: const CalendarDrawerTile(
          iconData: Icons.exit_to_app_outlined,
          title: "Back",
        ),
      ),
    ];
  }
}
