import 'package:flutter/material.dart';
import 'package:tobeto_mobil/models/enums/talent_item.dart';
import 'package:tobeto_mobil/pages/profile/profile_container/contents_widget.dart';

class TalentListWidget extends StatelessWidget {
  const TalentListWidget({
    super.key,
    required this.talents,
  });

  final List<TalentItem>? talents;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 7 / 1,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: talents?.length ?? 0,
        itemBuilder: (context, index) {
          return ContentsWidget(
            child: Text(
               talents![index].toString(),
               style: Theme.of(context).textTheme.bodyLarge,
            ),
          );
        },
      ),
    );
  }
}
