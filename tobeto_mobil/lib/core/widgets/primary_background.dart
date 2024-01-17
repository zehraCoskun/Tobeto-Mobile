import 'package:flutter/material.dart';

class PrimaryBackgroundWidget extends StatelessWidget {
  const PrimaryBackgroundWidget({
    super.key,
    this.child,
    this.clipper,
  });

  final CustomClipper<Path>? clipper;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.primary,
      child: ClipPath(
        clipper: clipper,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Theme.of(context).colorScheme.onSecondary.withAlpha(100),
                Theme.of(context).colorScheme.onSecondary.withAlpha(150),
                Theme.of(context).colorScheme.primary,
              ],
            ),
          ),
          child: child,
        ),
      ),
    );
  }
}
