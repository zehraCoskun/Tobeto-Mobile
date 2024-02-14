import 'package:flutter/widgets.dart';

@immutable
abstract class CatalogEvent {}

class CatalogEventFetch implements CatalogEvent {
  const CatalogEventFetch();
}
