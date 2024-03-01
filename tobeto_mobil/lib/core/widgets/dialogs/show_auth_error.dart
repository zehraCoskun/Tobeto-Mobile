import 'package:flutter/material.dart' show BuildContext;
import 'package:tobeto_mobil/core/widgets/dialogs/generic_dialog.dart';
import 'package:tobeto_mobil/utils/exception/auth_error.dart';

Future<void> showAuthError({
  required AuthError authError,
  required BuildContext context,
}) {
  return showGenericDialog<void>(
    context: context,
    title: authError.dialogTitle,
    content: authError.dialogText,
    optionsBuilder: () => {
      'OK': true,
    },
  );
}
