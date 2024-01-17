import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
BoxShadow ProfileShadow() {
  return BoxShadow(
    color: Colors.grey.withOpacity(0.5),
    spreadRadius: 2,
    blurRadius: 4,
    offset: const Offset(2, 2),
  );
}
