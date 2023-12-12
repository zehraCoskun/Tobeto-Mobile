import 'package:flutter/material.dart';
import 'package:tobeto_mobil/colors/tobeto_colors.dart';
import 'package:tobeto_mobil/screens/login_screens.dart';

// class Deneme extends StatelessWidget {
//   const Deneme({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         alignment: Alignment.center,
//         children: [
//           Container(
//             width: 500,
//             height: 200,
//             color: Colors.yellow,
//           ),
//           Container(
//             width: 300,
//             height: 200,
//             color: Colors.red,
//           ),
//                     Container(
//             width: 200,
//             height: 100,
//             color: Colors.black,
//           ),
//         ],
//       ),
//     );
//   }
// }

// class Deneme extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Stack(
//           children: [
//             Container(
//               width: double.infinity,
//               height: double.infinity,
//               decoration: BoxDecoration(
//                 gradient: LinearGradient(
//                   begin: Alignment.topLeft,
//                   end: Alignment.bottomRight,
//                   colors: [Colors.blue, Colors.green], // İki farklı renk
//                 ),
//               ),
//             ),
//             Center(
//               child: Container(
//                 width: 200,
//                 height: 100,
//                 decoration: BoxDecoration(
//                   color: Colors.white, // İki renk arasındaki ortak alanın rengi
//                   borderRadius: BorderRadius.circular(50), // Elips şekli
//                 ),
//                 child: const Center(
//                   child: Text(
//                     "Merhaba, Flutter!",
//                     style: TextStyle(
//                       color: Colors.black, // İki renk arasındaki ortak alandaki metin rengi
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
class Deneme extends StatelessWidget {
  const Deneme({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(color: MyColors.errorColor),
        ClipPath(
          clipper: MyCustomClipper(),
          child: Container(
            color: MyColors.deneme,
          ),
        )
      ],
    );
  }
}
