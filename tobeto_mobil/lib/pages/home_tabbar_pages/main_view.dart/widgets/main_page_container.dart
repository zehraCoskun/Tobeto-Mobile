import 'package:flutter/material.dart';
import 'package:tobeto_mobil/core/widgets/basic_shadow.dart';

class MainPageContainer extends StatelessWidget {
  const MainPageContainer({
    super.key,
    required this.widget,
  });
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.all(8),
      child: widget,
      decoration: BoxDecoration(
        color: Colors.blueGrey.shade100,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(),
        boxShadow: [
          basicShadow(),
          basicShadow(),
        ],
      ),
    );
  }
}