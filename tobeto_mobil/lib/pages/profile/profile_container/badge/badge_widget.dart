//rozet image
import 'package:flutter/material.dart';
import 'package:tobeto_mobil/models/user/badge_model.dart';

class BadgeWidget extends StatefulWidget {
  const BadgeWidget({
    super.key,
    required this.badge,
  });
  final BadgeModel badge;

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
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeInOut,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            widget.badge.imageUrl,
            width: isPress ? 200.0 : 100.0,
            height: isPress ? 200.0 : 100.0,
          ),
        ),
      ),
    );
  }
}
