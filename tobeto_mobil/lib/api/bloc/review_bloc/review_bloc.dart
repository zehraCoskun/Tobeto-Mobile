import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_mobil/api/bloc/review_bloc/review_event.dart';
import 'package:tobeto_mobil/api/bloc/review_bloc/review_state.dart';
import 'package:tobeto_mobil/api/business/services/review_service.dart';
import 'package:tobeto_mobil/models/firebase_models/review_model.dart';

class ReviewBloc extends Bloc<ReviewEvent, ReviewState> {
  final ReviewService _reviewService;
  ReviewBloc(this._reviewService) : super(const ReviewStateInitial()) {
    on<ReviewEventFetch>((event, emit) => _onFetchReviews(event, emit));
  }

  Future<void> _onFetchReviews(ReviewEventFetch event, Emitter<ReviewState> emit) async {
    emit(const ReviewStateLoading(isLoading: false));
    try {
      final List<ReviewModel> reviews = await _reviewService.getAllReview();
      emit(ReviewStateLoaded(reviews));
    } catch (e) {
      emit(ReviewStateError(errorMessage: e.toString()));
    }
  }
}
