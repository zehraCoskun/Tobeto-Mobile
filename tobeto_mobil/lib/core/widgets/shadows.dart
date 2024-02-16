import 'package:flutter/material.dart';

BoxShadow announcementTitleShadow() {
  return const BoxShadow(
    color: Colors.black,
    spreadRadius: 2,
    blurRadius: 3,
  );
}


BoxShadow containerBasicShadow() {
  return BoxShadow(
    color: Colors.grey.withOpacity(0.5),
    spreadRadius: 2,
    blurRadius: 4,
    offset: const Offset(2, 2),
  );
}
