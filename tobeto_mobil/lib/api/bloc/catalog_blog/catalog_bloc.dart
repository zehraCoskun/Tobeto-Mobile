import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_mobil/api/bloc/catalog_blog/catalog_event.dart';
import 'package:tobeto_mobil/api/bloc/catalog_blog/catalog_state.dart';
import 'package:tobeto_mobil/api/business/services/catalog_service.dart';
import 'package:tobeto_mobil/models/catalog_model.dart';

class CatalogBloc extends Bloc<CatalogEvent, CatalogState> {
  final CatalogService _catalogService;
  CatalogBloc(this._catalogService) : super(const CatalogStateInitial()) {
    on<CatalogEventFetch>((event, emit) => _onFetchCatalogEducations(event, emit));
  }

  Future<void> _onFetchCatalogEducations(CatalogEventFetch event, Emitter<CatalogState> emit) async {
    emit(const CatalogStateLoading(isLoading: false));
    try {
      final List<CatalogModel> catalogs = await _catalogService.getCategoryEducation();
      emit(CatalogStateLoaded(catalogs));
    } catch (e) {
      emit(CatalogStateError(errorMessage: e.toString()));
    }
  }
}
