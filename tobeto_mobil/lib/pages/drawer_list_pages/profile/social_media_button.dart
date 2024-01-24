//sosyal medya icon button
import 'package:flutter/material.dart';
import 'package:tobeto_mobil/core/widgets/basic_shadow.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaButton extends StatelessWidget {
  const SocialMediaButton({
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
          color: Colors.white,
          boxShadow: [basicShadow()],
        ),
        child: Image.asset(
          logo,
          height: 32,
          color: color,
        ),
      ),
    );
  }

  Future<void> _launchUrl(Uri _url) async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }
}
