import 'package:flutter/material.dart';
import 'package:tobeto_mobil/models/user_model.dart';

class DrawerHead extends StatelessWidget {
  const DrawerHead({
    Key? key,
    required this.user,
  }) : super(key: key);
  final UserModel user;
  @override
  Widget build(BuildContext context) {
    return UserAccountsDrawerHeader(
      arrowColor: Theme.of(context).colorScheme.onBackground,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onSecondary,
      ),

      // user.name,
      accountName: Text(
        user.userName,
        style: const TextStyle(color: Colors.black87),
      ),

      // user.email,
      accountEmail: Text(
        user.userEmail,
        style: const TextStyle(color: Colors.black87),
      ),

      // user.photo?
      currentAccountPicture: CircleAvatar(backgroundColor: Theme.of(context).colorScheme.background, child: Image.asset(user.userPicture!)),
    );
  }
}
