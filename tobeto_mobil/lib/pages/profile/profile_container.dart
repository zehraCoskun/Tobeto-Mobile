//temel container
import 'package:flutter/material.dart';
import 'package:tobeto_mobil/utils/theme/theme_ios.dart';

// class ProfileContainer extends StatelessWidget {
//   const ProfileContainer({
//     super.key,
//     required this.child,
//     this.height,
//   });
//   final Widget child;
//   final double? height;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: height,
//       margin: const EdgeInsets.all(16),
//       decoration: BoxDecoration(border: Border.all(), color: Colors.white70, borderRadius: BorderRadius.circular(16), boxShadow: [
//         BoxShadow(
//           color: TobetoDarkColors.lacivert.withOpacity(0.5),
//           spreadRadius: 4,
//           blurRadius: 4,
//           offset: const Offset(0, 4),
//         )
//       ]),
//       child: child,
//     );
//   }
// }

class ProfileContainer extends StatelessWidget {
  const ProfileContainer({
    Key? key,
    required this.child,
    this.height,
  }) : super(key: key);

  final Widget child;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white, // Beyaz arka plan
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2), // Hafif gri renkli gölge
            spreadRadius: 4,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: child,
    );
  }
}
