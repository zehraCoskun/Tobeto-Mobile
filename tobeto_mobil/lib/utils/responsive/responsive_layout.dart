import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({
    Key? key,
    required this.mobileBody,
    required this.desktopBody, required this.tabletBody,
  }) : super(key: key);

  final Widget mobileBody;
  final Widget desktopBody;
  final Widget tabletBody;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 700) {
          return mobileBody;
        } else if (constraints.maxWidth < 1000) {
          return tabletBody;
        } else {
          return desktopBody;
        }
      },
    );
  }
}
