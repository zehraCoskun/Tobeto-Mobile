import 'package:flutter/material.dart';
import 'package:tobeto_mobil/core/widgets/basic_shadow.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({
    Key? key,
    this.margin,
    this.padding,
    this.child,
  }) : super(key: key);

  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: padding ?? const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Theme.of(context).drawerTheme.backgroundColor,
        boxShadow: [basicShadow(), basicShadow(), basicShadow()],
      ),
      child: child,
    );
  }
}
