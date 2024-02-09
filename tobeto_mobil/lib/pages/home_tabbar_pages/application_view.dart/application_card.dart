import 'package:flutter/material.dart';
import 'package:tobeto_mobil/core/widgets/container_widget.dart';
import 'package:tobeto_mobil/models/firebase_models/application_model.dart';
import 'package:tobeto_mobil/utils/theme/theme_ios.dart';

class ApplicationCard extends StatelessWidget {
  const ApplicationCard({
    Key? key,
    required this.application,
  }) : super(key: key);

  final ApplicationModel application;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.5 / 1,
      child: ContainerWidget(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildHeader(context),
            buildBody(),
            buildFooter(context),
          ],
        ),
      ),
    );
  }

  Widget buildHeader(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          application.title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ],
    );
  }

  Widget buildBody() {
    return Column(
      children: [
        InfoLine(infoText: application.text1),
        InfoLine(infoText: application.text2),
      ],
    );
  }

  Widget buildFooter(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          application.state,
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ],
    );
  }
}

class InfoLine extends StatelessWidget {
  const InfoLine({
    super.key,
    required this.infoText,
  });

  final String infoText;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CheckIcon(),
        Expanded(
          child: Text(
            infoText,
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
      ],
    );
  }
}

class CheckIcon extends StatelessWidget {
  const CheckIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Icon(
        Icons.check,
        color: TobetoDarkColors.yesil,
      ),
    );
  }
}
