import 'package:flutter/material.dart';
import 'package:tobeto_mobil/core/screens/global_scaffold.dart';
import 'package:tobeto_mobil/dummy_user_data.dart';

class ReviewsPage extends StatelessWidget {
  const ReviewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GlobalScaffold(
      userModel: user1,
      appBar: AppBar(
        title: Text(
          "Yetkinliklerini Test Et !",
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
    );
  }
}
