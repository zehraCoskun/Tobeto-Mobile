import 'package:flutter/material.dart';
import 'package:tobeto_mobil/models/team_model.dart';

@immutable
abstract class TeamState {
  final bool isLoading;
  const TeamState({this.isLoading = false});
}

@immutable
class TeamStateInitial extends TeamState {
  const TeamStateInitial({
    bool isLoading = false,
  }) : super(isLoading: isLoading);
}

@immutable
class TeamStateLoading extends TeamState {
  const TeamStateLoading({
    bool isLoading = false,
  }) : super(isLoading: isLoading);
}

@immutable
class TeamStateLoaded extends TeamState {
  final List<TeamModel> teams;
  const TeamStateLoaded(this.teams);
}

@immutable
class TeamStateError extends TeamState {
  final String errorMessage;

  const TeamStateError({
    required this.errorMessage,
  }) : super(isLoading: false);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is TeamStateError && other.errorMessage == errorMessage;
  }

  @override
  int get hashCode => errorMessage.hashCode;
}
