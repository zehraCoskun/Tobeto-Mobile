import 'package:flutter/material.dart';

BoxShadow announcementTitleShadow() {
  return const BoxShadow(
    color: Colors.black,
    spreadRadius: 2,
    blurRadius: 3,
  );
}

BoxShadow newsTitleShadow() {
  return const BoxShadow(
    color: Colors.white,
    spreadRadius: 1,
    blurRadius: 1,
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

BoxShadow purpleShadow() {
  return BoxShadow(
    color: Colors.purple.withOpacity(0.5),
    spreadRadius: 2,
    blurRadius: 4,
    offset: const Offset(2, 2),
  );
}
