import 'package:flutter/material.dart';
import 'package:tobeto_mobil/constants/pages/home_text.dart';
import 'package:tobeto_mobil/constants/sizes.dart';
import 'package:tobeto_mobil/models/application_model.dart';

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
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: padding16, vertical: padding16 / 2),
        padding: const EdgeInsets.symmetric(horizontal: padding16, vertical: padding16 / 2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Theme.of(context).drawerTheme.backgroundColor,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(4, 4), // Sol üst köşeden ışık vurmuş gibi efekt için negatif değerler kullanılır.
            ),
          ],
        ),
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
            style: const TextStyle(fontSize: 18),
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
    return const Padding(
      padding: EdgeInsets.all(4),
      child: Icon(
        Icons.check,
        color: logoYesil,
      ),
    );
  }
}
