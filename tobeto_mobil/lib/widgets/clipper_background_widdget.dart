import 'package:flutter/material.dart';

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height * 0.8);
    path.quadraticBezierTo(size.width * 0.5, size.height * 1, size.width * 1, size.height * 0.6);
    path.quadraticBezierTo(size.width * 1, size.height * 1, size.width * 1, size.height * 1);
    path.lineTo(size.width, 1);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
