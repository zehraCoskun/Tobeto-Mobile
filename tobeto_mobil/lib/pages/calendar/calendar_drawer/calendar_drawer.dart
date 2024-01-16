import 'package:flutter/material.dart';
import 'package:tobeto_mobil/pages/calendar/calendar_drawer/enums/calendar_drawer_filter_item.dart';
import 'package:tobeto_mobil/pages/calendar/calendar_drawer/enums/calendar_drawer_view_item.dart';
import 'package:tobeto_mobil/pages/calendar/calendar_drawer/calendar_drawer_tile.dart';

class CalendarDrawer extends StatelessWidget {
  const CalendarDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          const Text(
            "Tobeto Calendar",
            textAlign: TextAlign.center,
          ),
          ...CalendarDrawerViewItem.values.map((item) {
            return CalendarDrawerTile(
              iconData: item.toIconData(),
              title: item.toString(),
            );
          }),
          buildDivider(),

          //bu listtile icon yerine kisinin icon boyutundaki profil fotografi olucak ve email adresi olucak
          const ListTile(
            leading: Icon(
              Icons.person,
              color: Colors.white,
            ),
            title: Text(
              "cemguven4108@gmail.com",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
          ),
          ...CalendarDrawerFilterItem.values.map(
            (item) {
              return CalendarDrawerTile(
                iconData: Icons.check_box,
                color: item.toColor(),
                title: item.toString(),
              );
            },
          ),
          buildDivider(),
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
        ],
      ),
    );
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
