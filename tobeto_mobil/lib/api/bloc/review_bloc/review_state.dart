import 'package:flutter/material.dart';
import 'package:tobeto_mobil/models/review_model.dart';

@immutable
abstract class ReviewState {
  final bool isLoading;
  const ReviewState({this.isLoading = false});
}

@immutable
class ReviewStateInitial extends ReviewState {
  const ReviewStateInitial({
    bool isLoading = false,
  }) : super(isLoading: isLoading);
}

@immutable
class ReviewStateLoading extends ReviewState {
  const ReviewStateLoading({
    bool isLoading = false,
  }) : super(isLoading: isLoading);
}

@immutable
class ReviewStateLoaded extends ReviewState {
  final List<ReviewModel> reviews;
  const ReviewStateLoaded(this.reviews);
}

@immutable
class ReviewStateError extends ReviewState {
  final String errorMessage;

  const ReviewStateError({
    required this.errorMessage,
  }) : super(isLoading: false);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ReviewStateError && other.errorMessage == errorMessage;
  }

  @override
  int get hashCode => errorMessage.hashCode;
}
