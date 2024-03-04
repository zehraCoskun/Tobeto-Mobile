import 'package:flutter/foundation.dart' show immutable;

@immutable
abstract class CustomException {
  final String dialogTitle;
  final String dialogText;

  const CustomException({
    required this.dialogTitle,
    required this.dialogText,
  });
}