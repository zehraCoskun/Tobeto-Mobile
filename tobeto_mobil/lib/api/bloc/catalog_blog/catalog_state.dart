
import 'package:flutter/material.dart';
import 'package:tobeto_mobil/models/catalog/catalog_model.dart';


@immutable
abstract class CatalogState {
  const CatalogState();
}

@immutable
class CatalogStateInitial extends CatalogState {
  const CatalogStateInitial();
}

@immutable
class CatalogStateLoading extends CatalogState {
  const CatalogStateLoading();
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
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is CatalogStateError && other.errorMessage == errorMessage;
  }

  @override
  int get hashCode => errorMessage.hashCode;
}


