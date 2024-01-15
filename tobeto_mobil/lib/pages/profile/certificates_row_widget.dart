//sertifikalarım içeriği
import 'package:flutter/material.dart';
import 'package:tobeto_mobil/pages/profile/contents_widget.dart';

class CertificatesRowWidget extends StatelessWidget {
  const CertificatesRowWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        ContentsWidget(
          competence: "Tobeto - Flutter ile Mobil Geliştirme",
        ),
      ],
    );
  }
}

