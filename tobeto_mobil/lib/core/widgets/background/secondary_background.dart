import 'package:flutter/material.dart';

class SecondaryBackgroundWidget extends StatelessWidget {
  const SecondaryBackgroundWidget({
    super.key,
    this.child,
    this.clipper,
  });

  final CustomClipper<Path>? clipper;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: clipper,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.white,
              Colors.grey.shade100,
              Colors.black26,
            ],
          ),
        ),
        child: child,
      ),
    );
  }
}
