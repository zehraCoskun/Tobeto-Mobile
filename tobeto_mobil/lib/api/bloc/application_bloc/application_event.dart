import 'package:flutter/widgets.dart';

@immutable
abstract class ApplicationEvent {}

class ApplicationEventFetch implements ApplicationEvent {
  const ApplicationEventFetch();
}
