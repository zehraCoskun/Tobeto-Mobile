import 'package:flutter/material.dart';
import 'package:tobeto_mobil/utils/theme/theme_ios.dart';

class ErrorSnackBar extends StatelessWidget {
  const ErrorSnackBar({super.key, required this.errorMessage});

  final String errorMessage;
  
  @override
  Widget build(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          errorMessage,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        backgroundColor: TobetoDarkColors.mor,
      ),
    );
    return Container();
  }
}