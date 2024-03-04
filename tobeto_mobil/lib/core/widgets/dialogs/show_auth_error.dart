import 'package:flutter/material.dart' show BuildContext;
import 'package:tobeto_mobil/core/widgets/dialogs/generic_dialog.dart';
import 'package:tobeto_mobil/utils/exception/custom_exception.dart';

Future<void> showAuthError({
  required CustomException exception,
  required BuildContext context,
}) {
  return showGenericDialog<void>(
    context: context,
    title: exception.dialogTitle,
    content: exception.dialogText,
    optionsBuilder: () => {
      'OK': true,
    },
  );
}
