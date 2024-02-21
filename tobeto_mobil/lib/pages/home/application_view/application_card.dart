import 'package:flutter/material.dart';
import 'package:tobeto_mobil/constants/pages/home_page.dart';
import 'package:tobeto_mobil/core/widgets/container_widget.dart';
import 'package:tobeto_mobil/models/application_model.dart';
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
        InfoLine(
          infoText: application.stage1,
          isPass: application.isPass1,
        ),
        InfoLine(
          infoText: application.stage2,
          isPass: application.isPass2,
        ),
      ],
    );
  }

  Widget buildFooter(BuildContext context) {
    var applicationState = "";
    Color stateColor = TobetoDarkColors.yesil;

    if (application.isPass1 && application.isPass2) {
      applicationState = isApproved;
    } else {
      applicationState = isNotApproved;
      stateColor = TobetoDarkColors.kirmizi;
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          applicationState,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(color: stateColor),
        ),
      ],
    );
  }
}

class InfoLine extends StatelessWidget {
  const InfoLine({
    super.key,
    required this.infoText,
    required this.isPass,
  });

  final String infoText;
  final bool isPass;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        isPass ? const CheckIcon() : const CancelIcon(),
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

class CancelIcon extends StatelessWidget {
  const CancelIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Icon(
        Icons.cancel,
        color: TobetoDarkColors.kirmizi,
      ),
    );
  }
}
