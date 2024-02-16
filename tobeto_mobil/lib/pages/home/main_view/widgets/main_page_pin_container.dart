//iconun container'ı
import 'package:flutter/material.dart';
import 'package:tobeto_mobil/core/widgets/shadows.dart';

class MainPagePinContainer extends StatelessWidget {
  const MainPagePinContainer({
    super.key,
    required this.widget,
  });
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: Theme.of(context).appBarTheme.backgroundColor,
        borderRadius: BorderRadius.circular(4),
        border: Border.all(),
        boxShadow: [
          containerBasicShadow(),
        ],
      ),
      child: widget,
    );
  }
}
