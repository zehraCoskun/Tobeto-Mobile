//sertifikalarım içeriği
import 'package:flutter/material.dart';
import 'package:tobeto_mobil/pages/drawer_list_pages/profile/lists/contents_widget.dart';

class CertificatesListWidget extends StatelessWidget {
  const CertificatesListWidget({
    super.key,
    this.certificates,
  });
  final List<String>? certificates;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 7 / 1,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: certificates != null ? certificates!.length : 0,
        itemBuilder: (context, index) {
          return ContentsWidget(
            content: certificates != null ? certificates![index] : "",
          );
        },
      ),
    );
  }
}
