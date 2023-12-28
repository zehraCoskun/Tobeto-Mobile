import 'package:flutter/material.dart';
import 'package:tobeto_mobil/constants/sizes.dart';

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
      margin: margin ?? const EdgeInsets.symmetric(
        horizontal: padding16,
        vertical: padding16 / 2,
      ),
      padding: padding ?? const EdgeInsets.symmetric(
        horizontal: padding16,
        vertical: padding16 / 2,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Theme.of(context).drawerTheme.backgroundColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(
              4,
              4,
            ), // Sol üst köşeden ışık vurmuş gibi efekt için negatif değerler kullanılır.
          ),
        ],
      ),
      child: child,
    );
  }
}
