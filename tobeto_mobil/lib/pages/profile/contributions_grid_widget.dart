import 'package:flutter/material.dart';
import 'package:tobeto_mobil/utils/theme/theme_ios.dart';

// class ContributionsGrid extends StatelessWidget {
//   const ContributionsGrid({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 300,
//       padding: const EdgeInsets.all(16.0),
//       child: GridView.builder(
//         scrollDirection: Axis.horizontal,
//         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 7,
//           mainAxisSpacing: 4.0,
//           crossAxisSpacing: 1.0,
//         ),
//         itemCount: 365,
//         itemBuilder: (context, index) {
//           var colorIsDark = false;
//           Color color = TobetoDarkColors.mor;
//           if (index % 11 == 0) {
//             colorIsDark = true;
//           }
//           if (colorIsDark) {
//             color = TobetoDarkColors.yesil.withAlpha(230);
//           } else if (index % 5 == 0) {
//             color = TobetoDarkColors.yesil.withAlpha(150);
//           } else {
//             color = TobetoDarkColors.yesil.withAlpha(50);
//           }

//           return Container(
//             decoration: BoxDecoration(
//               color: color,
//               shape: BoxShape.rectangle,
//               borderRadius: BorderRadius.circular(4.0),
//             ),
//             child: Center(
//                 child: Text(
//               (index + 1).toString(),
//               style: Theme.of(context).textTheme.bodyLarge,
//             )),
//           );
//         },
//       ),
//     );
//   }
// }


final List<Map<String, int>> months = [
  {"Jan": 31},
  {"Feb": 28},
  {"Mar": 31},
  {"Apr": 30},
  {"May": 31},
  {"Jun": 30},
  {"Jul": 31},
  {"Aug": 31},
  {"Sep": 30},
  {"Oct": 31},
  {"Nov": 30},
  {"Dec": 31},
];

class ContributionsGrid extends StatelessWidget {
  const ContributionsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3 / 1,
      child: GridView.builder(
        scrollDirection: Axis.horizontal,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 7,
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 1.0,
        ),
        itemCount: 365,
        itemBuilder: (context, index) {
          var colorIsDark = false;
          Color color = TobetoDarkColors.mor;
          if (index % 11 == 0) {
            colorIsDark = true;
          }
          if (colorIsDark) {
            color = TobetoDarkColors.yesil.withAlpha(230);
          } else if (index % 5 == 0) {
            color = TobetoDarkColors.yesil.withAlpha(150);
          } else {
            color = TobetoDarkColors.yesil.withAlpha(50);
          }

          return Container(
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(4.0),
            ),
          );
        },
      ),
    );
  }
}