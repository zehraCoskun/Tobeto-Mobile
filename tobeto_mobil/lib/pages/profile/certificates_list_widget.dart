//sertifikalarım içeriği
import 'package:flutter/material.dart';
import 'package:tobeto_mobil/pages/profile/contents_widget.dart';

class CertificatesRowWidget extends StatelessWidget {
  const CertificatesRowWidget.CertificatesListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 7 / 1,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: certificates.length,
        itemBuilder: (context, index) {
          return ContentsWidget(
            competence: certificates[index],
          );
        },
      ),
    );
  }
}

final List<String> certificates = ["Tobeto- Flutter ile Mobil Geliştirme"];
