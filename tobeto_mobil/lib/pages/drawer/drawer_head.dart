import 'package:flutter/material.dart';

class DrawerHead extends StatelessWidget {
  const DrawerHead({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UserAccountsDrawerHeader(
      arrowColor: Theme.of(context).colorScheme.onBackground,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onSecondary,
      ),

      // user.name,
      accountName: const Text(
        'Zehra Coşkun',
        style: TextStyle(color: Colors.black87),
      ),

      // user.email,
      accountEmail: const Text(
        'zehra@example.com',
        style: TextStyle(color: Colors.black87),
      ),

      // user.photo?
      currentAccountPicture: CircleAvatar(
        backgroundColor: Theme.of(context).colorScheme.background,
        child: Icon(
          Icons.person_2_outlined,
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
    );
  }
}
