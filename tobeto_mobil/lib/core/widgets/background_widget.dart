import 'package:flutter/material.dart';

/* bu widgetin biraz daha oynanmaya ihtiyaci var 
hala yeterince guzel kod yazilmis gibi hissettirmiyor */
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
      //color: MyColors.otherColor.withOpacity(0.6),
      color: Theme.of(context).colorScheme.primary,

      //color: Colors.deepPurple,
      child: ClipPath(
        clipper: clipper,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Theme.of(context).colorScheme.primary, //.withOpacity(0.1).withAlpha(200)
                Theme.of(context).colorScheme.onSecondary.withAlpha(200),
                
                // 12/15/2023 6PM - added Alpha of 100
                Theme.of(context).colorScheme.onSecondary.withAlpha(100),
              ],
            ),
          ),
          child: child,
        ),
      ),
    );
  }
}
