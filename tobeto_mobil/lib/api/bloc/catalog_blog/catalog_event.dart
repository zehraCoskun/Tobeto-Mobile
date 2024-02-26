import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/widgets.dart';
import 'package:tobeto_mobil/models/catalog/sort_by.dart';

@immutable
abstract class CatalogEvent {}

class CatalogEventFetch implements CatalogEvent {
  final SortBy? sortBy;

  const CatalogEventFetch({
    this.sortBy,
  });
}

class CatalogEventFetchFiltered implements CatalogEvent {
  final Filter filter;
  final SortBy? sortBy;

  const CatalogEventFetchFiltered({
    required this.filter,
    this.sortBy,
  });
}
