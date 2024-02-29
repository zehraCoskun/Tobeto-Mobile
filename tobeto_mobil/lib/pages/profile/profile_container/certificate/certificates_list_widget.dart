import 'package:flutter/material.dart';
import 'package:tobeto_mobil/models/user/certificate_model.dart';
import 'package:tobeto_mobil/pages/profile/profile_container/contents_widget.dart';

class CertificatesListWidget extends StatelessWidget {
  const CertificatesListWidget({
    super.key,
    this.certificates,
  });

  final List<CertificateModel>? certificates;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 7 / 1,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: certificates?.length ?? 0,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {},
            child: ContentsWidget(
              child: Text(
                certificates![index].name,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
          );
        },
      ),
    );
  }
}
