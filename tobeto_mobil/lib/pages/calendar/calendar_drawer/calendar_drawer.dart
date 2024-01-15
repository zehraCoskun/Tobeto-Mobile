import 'package:flutter/material.dart';
import 'package:tobeto_mobil/pages/calendar/calendar_drawer/calendar_drawer_view_item.dart';
import 'package:tobeto_mobil/pages/calendar/calendar_drawer/calendar_drawer_view_tile.dart';

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
            return CalendarDrawerViewTile(
              iconData: item.toIconData(),
              title: item.toString(),
            );
          }),
          const Divider(
            color: Colors.white30,
            thickness: 0.3,
          ),
          const ListTile(
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
          ),
          const Divider(
            color: Colors.white30,
            thickness: 0.3,
          ),
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
          ListTile(
            leading: Icon(
              Icons.check_box,
              color: Colors.deepPurple.shade700,
            ),
            title: const Text(
              "Events",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.check_box,
              color: Colors.blue.shade800,
            ),
            title: const Text(
              "Tasks",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
          ),
          const Divider(
            color: Colors.white30,
            indent: 50,
            thickness: 0.3,
          ),
          ListTile(
            leading: Icon(
              Icons.check_box,
              color: Colors.lightGreen.shade800,
            ),
            title: const Text(
              "Birthdays",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.check_box,
              color: Colors.green.shade900,
            ),
            title: const Text(
              "Holidays",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
          ),
          const Divider(
            color: Colors.white30,
            thickness: 0.3,
          ),
          const ListTile(
            leading: Icon(
              Icons.settings_outlined,
              color: Colors.white,
            ),
            title: Text(
              "Settings",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.help_outline_outlined,
              color: Colors.white,
            ),
            title: Text(
              "Help & feedback",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
