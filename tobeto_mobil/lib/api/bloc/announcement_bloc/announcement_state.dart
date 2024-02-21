import 'package:flutter/widgets.dart';
import 'package:tobeto_mobil/models/announcement_model.dart';

@immutable
abstract class AnnouncementState {
  final bool isLoading;
  const AnnouncementState({this.isLoading = false});
}

@immutable
class AnnouncementStateInitial extends AnnouncementState {
  const AnnouncementStateInitial({
    bool isLoading = false,
  }) : super(isLoading: isLoading);
}

@immutable
class AnnouncementStateLoading extends AnnouncementState {
  const AnnouncementStateLoading({
    bool isLoading = false,
  }) : super(isLoading: isLoading);
}

@immutable
class AnnouncementStateLoaded extends AnnouncementState {
  final List<AnnouncementModel> announcements;
  const AnnouncementStateLoaded(this.announcements);
}

@immutable
class AnnouncementStateError extends AnnouncementState {
  final String errorMessage;

  const AnnouncementStateError({
    required this.errorMessage,
  }) : super(isLoading: false);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AnnouncementStateError && other.errorMessage == errorMessage;
  }

  @override
  int get hashCode => errorMessage.hashCode;
}
