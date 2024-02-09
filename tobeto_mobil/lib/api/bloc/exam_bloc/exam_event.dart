import 'package:flutter/material.dart';

@immutable
abstract class ExamEvent {}

class ExamEventFetch implements ExamEvent {
  const ExamEventFetch();
}
