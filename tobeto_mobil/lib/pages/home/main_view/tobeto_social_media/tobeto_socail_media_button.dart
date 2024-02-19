import 'package:flutter/material.dart';
import 'package:tobeto_mobil/core/widgets/shadows.dart';
import 'package:tobeto_mobil/utils/theme/theme_ios.dart';
import 'package:url_launcher/url_launcher.dart';

class TobetoSocialMediaButton extends StatelessWidget {
  const TobetoSocialMediaButton({
    super.key,
    required this.logo,
    required this.url,
    required this.color,
  });
  final String logo;
  final String url;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        _launchUrl(Uri.parse(url));
      },
      icon: Container(
        padding: const EdgeInsets.all(8),
        width: 48,
        height: 48,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: TobetoDarkColors.krem,
          boxShadow: [containerBasicShadow()],
        ),
        child: Image.asset(
          logo,
          height: 32,
          color: color,
        ),
      ),
    );
  }

  Future<void> _launchUrl(Uri url) async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }
}
