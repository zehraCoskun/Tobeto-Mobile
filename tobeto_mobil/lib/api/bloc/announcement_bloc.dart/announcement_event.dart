import 'package:flutter/foundation.dart';

@immutable
abstract class AnnouncementEvent {}

class AnnouncementEventFetch implements AnnouncementEvent {
  const AnnouncementEventFetch();
}
