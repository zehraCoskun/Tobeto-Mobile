import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_mobil/api/bloc/tobeto_news_bloc/tobeto_news_event.dart';
import 'package:tobeto_mobil/api/bloc/tobeto_news_bloc/tobeto_news_state.dart';
import 'package:tobeto_mobil/api/business/services/tobeto_announcement_service.dart';
import 'package:tobeto_mobil/models/tobeto_announcement_model.dart';

class TobetoNewsBloc extends Bloc<TobetoNewsEvent, TobetoNewsState> {
  final TobetoNewsService _tobetoNewsService;
  TobetoNewsBloc(this._tobetoNewsService) : super(const TobetoNewsStateInitial()) {
    on<TobetoNewsEventFetch>((event, emit) => _onFetchTobetoNews(event, emit));
  }

  Future<void> _onFetchTobetoNews(TobetoNewsEventFetch event, Emitter<TobetoNewsState> emit) async {
    emit(const TobetoNewsStateLoading(isLoading: true));
    try {
      final List<TobetoNewsModel> tobetoNews = await _tobetoNewsService.getAllNews();
      emit(TobetoNewsStateLoaded(tobetoNews));
    } catch (e) {
      emit(TobetoNewsStateError(errorMessage: e.toString()));
    }
  }
}
