import 'package:tobeto_mobil/utils/exception/custom_exception.dart';

abstract class UserException extends CustomException {
  const UserException({
    required String dialogText,
    required String dialogTitle,
  }) : super(
          dialogText: dialogText,
          dialogTitle: dialogTitle,
        );
}

class UserExceptionThereWasAnError extends UserException {
  const UserExceptionThereWasAnError() : super(
    dialogText: "There was an error",
    dialogTitle: "Oops!",
  );
}

class UserExceptionNotFound extends UserException {
  const UserExceptionNotFound() : super(
    dialogText: "User Not Found",
    dialogTitle: "Not Found",
  );
}