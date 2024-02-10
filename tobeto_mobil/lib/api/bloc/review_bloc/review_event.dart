import 'package:flutter/widgets.dart';

@immutable
abstract class ReviewEvent {}

class ReviewEventFetch implements ReviewEvent {
  const ReviewEventFetch();
}
