import 'package:flutter/material.dart';
import 'package:tobeto_mobil/pages/profile/lists/contents_widget.dart';
import 'package:tobeto_mobil/core/widgets/basic_shadow.dart';

class CompetenceWidget extends StatelessWidget {
  const CompetenceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16), boxShadow: [basicShadow()]),
      child: AspectRatio(
        aspectRatio: 7 / 1,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: MyItems.length,
          itemBuilder: (context, index) {
            return IntrinsicWidth(
              child: ContentsWidget(competence: MyItems[index]),
            );
          },
        ),
      ),
    );
  }
}

final List<String> MyItems = [
  "Flutter",
];

/*
child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            maxCrossAxisExtent: 100.0,
            childAspectRatio: 3 / 1,
          ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [ProfileShadow()],
                ),
                child: Text(
                  items[index],
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: 16,
                      ),
                ));
          },
        ),
        */