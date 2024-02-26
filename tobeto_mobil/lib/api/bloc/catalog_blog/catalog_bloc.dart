import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_mobil/api/bloc/catalog_blog/catalog_event.dart';
import 'package:tobeto_mobil/api/bloc/catalog_blog/catalog_state.dart';
import 'package:tobeto_mobil/api/business/services/catalog_service.dart';
import 'package:tobeto_mobil/models/catalog/catalog_model.dart';

class CatalogBloc extends Bloc<CatalogEvent, CatalogState> {
  final CatalogService _catalogService;
  CatalogBloc(this._catalogService) : super(const CatalogStateInitial()) {
    on<CatalogEventFetch>((event, emit) => _onFetchCatalog(event, emit));
    on<CatalogEventFetchFiltered>(
        (event, emit) => _onFetchFilteredCatalog(event, emit));
  }

  Future<void> _onFetchCatalog(
    CatalogEventFetch event,
    Emitter<CatalogState> emit,
  ) async {
    emit(const CatalogStateLoading());
    try {
      final List<CatalogModel> catalogs = await _catalogService.getCatalog(event.sortBy);
      emit(CatalogStateLoaded(catalogs));
    } catch (e) {
      emit(CatalogStateError(errorMessage: e.toString()));
    }
  }

  Future<void> _onFetchFilteredCatalog(
    CatalogEventFetchFiltered event,
    Emitter<CatalogState> emit,
  ) async {
    emit(const CatalogStateLoading());

    final catalogs = await _catalogService.getFilteredCatalog(event.sortBy, event.filter);

    emit(CatalogStateLoaded(catalogs));
  }
}