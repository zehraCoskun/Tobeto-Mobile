import 'package:flutter/material.dart';
import 'package:tobeto_mobil/core/widgets/container_widget.dart';
import 'package:tobeto_mobil/models/exam_model.dart';
import 'package:tobeto_mobil/utils/theme/theme_ios.dart';

class ExamCard extends StatelessWidget {
  const ExamCard({
    Key? key,
    required this.exam,
  }) : super(key: key);

  final ExamModel exam;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3 / 1,
      child: ContainerWidget(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildHeader(context),
            buildBody(context),
            buildFooter(context),
          ],
        ),
      ),
    );
  }

  Widget buildHeader(BuildContext context) {
    return Expanded(
      child: Text(exam.title, style: Theme.of(context).textTheme.titleLarge?.copyWith(fontSize: 18)),
    );
  }

  Widget buildBody(BuildContext context) {
    return Text(exam.detail, style: Theme.of(context).textTheme.titleMedium);
  }

  Widget buildFooter(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const TimeIcon(),
        Text(
          exam.duration,
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}

class TimeIcon extends StatelessWidget {
  const TimeIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Icon(
        Icons.timer_outlined,
        color: TobetoDarkColors.yesil,
      ),
    );
  }
}
