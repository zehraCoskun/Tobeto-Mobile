import 'package:flutter/foundation.dart';

@immutable
abstract class TobetoNewsEvent {}

class TobetoNewsEventFetch implements TobetoNewsEvent {
  const TobetoNewsEventFetch();
}
