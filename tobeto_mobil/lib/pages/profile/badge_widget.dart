//rozet image
import 'package:flutter/material.dart';

class BadgeWidget extends StatefulWidget {
  const BadgeWidget({
    super.key,
    required this.badge,
  });
  final String badge;

  @override
  State<BadgeWidget> createState() => _BadgeWidgetState();
}

class _BadgeWidgetState extends State<BadgeWidget> {
  bool isPress = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details) {
        setState(() {
          isPress = true;
        });
      },
      onTapUp: (details) {
        setState(() {
          isPress = false;
        });
      },
      child: AnimatedSize(
        duration: Duration(milliseconds: 200),
        curve: Curves.easeInOut,
        child: Image.asset(
          widget.badge,
          width: isPress ? 200.0 : 100.0,
          height: isPress ? 200.0 : 100.0,
        ),
      ),
    );
  }
}
