import 'package:flutter/material.dart';
import 'package:tobeto_mobil/models/catalog_model.dart';


@immutable
abstract class CatalogState {
  final bool isLoading;
  const CatalogState({this.isLoading = false});
}

@immutable
class CatalogStateInitial extends CatalogState {
  const CatalogStateInitial({
    bool isLoading = false,
  }) : super(isLoading: isLoading);
}

@immutable
class CatalogStateLoading extends CatalogState {
  const CatalogStateLoading({
    bool isLoading = false,
  }) : super(isLoading: isLoading);
}


@immutable
class CatalogStateLoaded extends CatalogState {
  final List<CatalogModel> catalogs;
  const CatalogStateLoaded(this.catalogs);
}

@immutable
class CatalogStateError extends CatalogState {
  final String errorMessage;

  const CatalogStateError({
    required this.errorMessage,
  }) : super(isLoading: false);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is CatalogStateError && other.errorMessage == errorMessage;
  }

  @override
  int get hashCode => errorMessage.hashCode;
}
