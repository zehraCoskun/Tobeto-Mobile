import 'package:flutter/material.dart';
import 'package:tobeto_mobil/models/demo_user_model.dart';
import 'package:tobeto_mobil/pages/drawer_list_pages/profile/lists/contents_widget.dart';
import 'package:tobeto_mobil/core/widgets/basic_shadow.dart';

class CompetenceWidget extends StatelessWidget {
  const CompetenceWidget({super.key, required this.user});
  final DemoUserModel user;
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
          itemCount: user.compteneces!.isNotEmpty ? user.compteneces?.length : 0, //MyItems.length,
          itemBuilder: (context, index) {
            return IntrinsicWidth(
              child: ContentsWidget(content: user.compteneces![index]),
            );
          },
        ),
      ),
    );
  }
}



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