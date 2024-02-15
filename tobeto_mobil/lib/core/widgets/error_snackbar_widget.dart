import 'package:flutter/material.dart';
import 'package:tobeto_mobil/utils/theme/theme_ios.dart';

class ErrorSnackBar extends StatefulWidget {
  const ErrorSnackBar({super.key, required this.errorMessage});
  final String errorMessage;
  @override
  State<ErrorSnackBar> createState() => _ErrorSnackBarState();
}

class _ErrorSnackBarState extends State<ErrorSnackBar> {
  @override
  Widget build(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          widget.errorMessage,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        backgroundColor: TobetoDarkColors.mor,
      ),
    );
    return Container();
  }
}