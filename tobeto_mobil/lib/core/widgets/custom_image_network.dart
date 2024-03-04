import 'package:flutter/material.dart';
import 'package:tobeto_mobil/constants/image_text.dart';

class CustomImageNetwork extends StatelessWidget {
  const CustomImageNetwork({
    super.key,
    required this.url,
    this.errorWidget,
  });

  final String url;
  final Widget? errorWidget;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      url,
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) return child;
        return Center(
          child: CircularProgressIndicator(
            value: loadingProgress.expectedTotalBytes != null
                ? loadingProgress.cumulativeBytesLoaded /
                    loadingProgress.expectedTotalBytes!
                : null,
          ),
        );
      },
      errorBuilder: (context, error, stackTrace) {
        return errorWidget ?? Image.asset(
          logoT,
          fit: BoxFit.cover,
        );
      },
    );
  }
}