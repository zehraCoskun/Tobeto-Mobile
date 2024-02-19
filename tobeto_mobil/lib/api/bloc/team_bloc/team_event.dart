import 'package:flutter/material.dart';

@immutable
abstract class TeamEvent {}

class TeamEventFetch implements TeamEvent {
  const TeamEventFetch();
}
