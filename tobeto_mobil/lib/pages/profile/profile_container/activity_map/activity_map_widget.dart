// import 'package:flutter/material.dart';
// import 'package:tobeto_mobil/pages/profile/profile_container/activity_map/activity_map_item.dart';

// class ActivityMapWidget extends StatelessWidget {
//   const ActivityMapWidget({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         AspectRatio(
//           aspectRatio: 3 / 1,
//           child: SingleChildScrollView(
//             scrollDirection: Axis.horizontal,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 buildMonths(context),
//                 Row(
//                   children: [
//                     buildDays(context),
//                     buildActivityMap(),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//         const Row(
//           mainAxisAlignment: MainAxisAlignment.end,
//           children: <Widget>[
//             Text(
//               "Less",
//               style: TextStyle(fontSize: 14),
//             ),
//             RateBox(
//               color: rate0Color,
//             ),
//             RateBox(
//               color: rate1Color,
//             ),
//             RateBox(
//               color: rate2Color,
//             ),
//             RateBox(
//               color: rate3Color,
//             ),
//             RateBox(
//               color: rate4Color,
//             ),
//             Text(
//               " More",
//               style: TextStyle(fontSize: 14),
//             ),
//           ],
//         ),
//       ],
//     );
//   }

//   Widget buildMonths(BuildContext context) {
//     return Row(
//       children: <Widget>[
//         ...ActivityMapItem.values.map((item) {
//           return Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 15),
//             child: Text(
//               item.toString(),
//               style: Theme.of(context).textTheme.bodyLarge!.copyWith(
//                     fontSize: 14,
//                   ),
//             ),
//           );
//         }),
//       ],
//     );
//   }

//   Widget buildDays(BuildContext context) {
//     return Column(
//       children: <Widget>[
//         Text(
//           "Mon",
//           style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 14),
//         ),
//         Text(
//           "Wed",
//           style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 14),
//         ),
//         Text(
//           "Fri",
//           style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 14),
//         ),
//       ],
//     );
//   }

//   Widget buildActivityMap() {
//     return Row(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: <Widget>[
//         ...buildWeeks(),
//       ],
//     );
//   }

//   List<Widget> buildWeeks() {
//     List<Widget> map = List.of([]);
//     for (int i = 0; i <= 52; i++) {
//       map.add(buildWeek(7));
//     }
//     map.add(buildWeek(1));

//     return map;
//   }

//   Widget buildWeek(int count, {MainAxisAlignment? alignment}) {
//     return Column(
//       mainAxisAlignment: alignment ?? MainAxisAlignment.center,
//       children: <Widget>[
//         for (int j = 0; j < count; j++)
//           Container(
//             margin: const EdgeInsets.all(1),
//             height: 11,
//             width: 11,
//             color: Colors.red,
//           ),
//       ],
//     );
//   }
// }

// class RateBox extends StatelessWidget {
//   const RateBox({
//     super.key,
//     required this.color,
//   });
//   final Color color;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.only(left: 5),
//       width: 11,
//       height: 11,
//       color: color,
//     );
//   }
// }
