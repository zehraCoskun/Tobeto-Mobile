import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:tobeto_mobil/models/calendar/enums/calendar_drawer_filter_item.dart';
import 'package:tobeto_mobil/models/calendar/enums/calendar_drawer_view_item.dart';
import 'package:tobeto_mobil/pages/calendar/calendar_drawer/calendar_drawer_tile.dart';

class CalendarDrawer extends StatelessWidget {
  const CalendarDrawer({
    Key? key,
    this.calendarController,
  }) : super(key: key);

  final CalendarController? calendarController;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          const Text(
            "Tobeto Calendar",
            textAlign: TextAlign.center,
          ),

          ...buildDrawerViewTiles(context),
          buildDivider(),

          //bu listtile icon yerine kisinin icon boyutundaki profil fotografi olucak ve email adresi olucak
          // const ListTile(
          //   leading: Icon(
          //     Icons.person,
          //     color: Colors.white,
          //   ),
          //   title: Text(
          //     "cemguven4108@gmail.com",
          //     style: TextStyle(
          //       color: Colors.white,
          //       fontSize: 15,
          //     ),
          //   ),
          // ),

          ...buildDrawerFilterTiles(),
          buildDivider(),

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

  Iterable<Widget> buildDrawerFilterTiles() {
    return CalendarDrawerFilterItem.values.map(
      (item) {
        return CalendarDrawerTile(
          iconData: Icons.check_box,
          color: item.toColor(),
          title: item.toString(),
        );
      },
    );
  }

  Iterable<Widget> buildDrawerFooter(BuildContext context) {
    return [
      const CalendarDrawerTile(
        iconData: Icons.settings_outlined,
        title: "Settings",
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

  Widget buildRefresh() {
    return const ListTile(
      leading: Icon(
        Icons.refresh_outlined,
        color: Colors.white,
      ),
      title: Text(
        "Refresh",
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      style: ListTileStyle.drawer,
    );
  }

  Widget buildDivider({double? indent}) {
    return Divider(
      color: Colors.white30,
      indent: indent,
      thickness: 0.3,
    );
  }
}
