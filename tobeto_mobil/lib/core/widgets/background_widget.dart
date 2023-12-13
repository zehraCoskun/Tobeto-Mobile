import 'package:flutter/material.dart';
import 'package:tobeto_mobil/colors/tobeto_colors.dart';

class BackgroundWidget extends StatelessWidget {
  const BackgroundWidget({
    super.key,
    this.child,
    this.clipper,
  });

  final CustomClipper<Path>? clipper;

  //bu olurda disaridan Scaffold gibi cagirip icerisine devam etmek istersek diye koydum genel bi background
  //widget olmus oldu bu sekilde
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(

      //asagidaki DeepPurple cok guzel oluyor diger renklerede biraz bakindim yalniz cok iyi oluyor
      //isterseniz Container icin de disaridan color zorunlu olarak alabiliriz farkli sayfalarda farkli
      //combinasyonlar kullanmak istersek diye  --oneri--

      color: MyColors.otherColor.withOpacity(0.6),
      //color: Colors.deepPurple,
      child: ClipPath(
        clipper: clipper,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                MyColors.mainColor,
                MyColors.otherColor.withAlpha(100),
              ],
            ),
          ),
          child: child,
        ),
      ),
    );
  }
}
