import 'package:flutter/foundation.dart' show immutable;

@immutable //bu sınıfın oluşturulduktan sonra değiştirilemez olmasını sağlar
abstract class UserState {
  final bool isLoading;
  const UserState({
    this.isLoading = false,
  });
}

@immutable
class UserStateInitial extends UserState {
  const UserStateInitial({
    bool isLoading = false,
  }) : super(isLoading: isLoading);
}

 @immutable
 class UserStateCreating extends UserState {
   const UserStateCreating({
     bool isLoading = false,
   }) : super(isLoading: isLoading);
 }
 
 @immutable
 class UserStateUpdating extends UserState {
   const UserStateUpdating({
     bool isLoading = false,
   }) : super(isLoading: isLoading);
 }

  @immutable
 class UserStateFetching extends UserState {
   const UserStateFetching({
     bool isLoading = false,
   }) : super(isLoading: isLoading);
 }



@immutable
class UserStateLoading extends UserState {
  const UserStateLoading({
    bool isLoading = false,
  }) : super(isLoading: isLoading);
}





@immutable
class UserStateError extends UserState {
  final String errorMessage;

  const UserStateError({
    required this.errorMessage,
  }) : super(isLoading: false);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UserStateError && other.errorMessage == errorMessage;
  }

  @override
  int get hashCode => errorMessage.hashCode;
}
