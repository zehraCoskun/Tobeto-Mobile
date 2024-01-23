import 'package:flutter/material.dart';
import 'package:tobeto_mobil/dummy_user_data.dart';
import 'package:tobeto_mobil/pages/profile/profile_shadow.dart';

class CompetenceCard extends StatelessWidget {
  const CompetenceCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [ProfileShadow()]),
      child: AspectRatio(
        aspectRatio: 4 / 1,
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 100,
            childAspectRatio: 3 / 1,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
          ),
          itemCount: CompetenceList.length,
          itemBuilder: (context, index) {
            return SizedBox(
              child: Text(
                CompetenceList[index],
                style: const TextStyle(color: Colors.black),
              ),
            );
          },
        ),
      ),
    );
  }
}

