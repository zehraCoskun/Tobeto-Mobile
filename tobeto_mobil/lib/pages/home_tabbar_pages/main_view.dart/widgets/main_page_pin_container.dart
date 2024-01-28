//iconun container'ı
import 'package:flutter/material.dart';
import 'package:tobeto_mobil/core/widgets/basic_shadow.dart';

class MainPagePinContainer extends StatelessWidget {
  const MainPagePinContainer({
    super.key,
    required this.widget,
  });
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(2),
      child: widget,
      decoration: BoxDecoration(
        color: Colors.blueGrey.shade100,
        borderRadius: BorderRadius.circular(4),
        border: Border.all(),
        boxShadow: [
          basicShadow(),
        ],
      ),
    );
  }
}