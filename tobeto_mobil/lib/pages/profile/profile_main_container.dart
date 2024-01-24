//temel container
import 'package:flutter/material.dart';
import 'package:tobeto_mobil/core/widgets/basic_shadow.dart';

class ProfileMainContainer extends StatelessWidget {
  const ProfileMainContainer({
    Key? key,
    required this.child,
    this.height,
  }) : super(key: key);

  final Widget child;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [basicShadow()],
      ),
      child: child,
    );
  }
}
