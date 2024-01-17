import 'package:flutter/material.dart';
import 'package:tobeto_mobil/core/clippers/wave_clipper.dart';

class AnimatedWaveCurves extends StatefulWidget {
  const AnimatedWaveCurves({super.key});

  @override
  State<StatefulWidget> createState() {
    return _AnimatedWavesCurves();
  }
}

class _AnimatedWavesCurves extends State<AnimatedWaveCurves> with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: const Duration(seconds: 4), vsync: this); //duration animasyon hızını belirliyor
    _controller.repeat();
    animation = Tween<double>(begin: -600, end: 0).animate(_controller); //animasyonun yönünü belirliyor
    animation.addListener(() {
      setState(() {});
    });
  }

  @override //dispose metodu, widget artık kullanılmadığında animasyon kontrolcüsünü temizlemek için kullanılıyor, bellek sızıntılarını önler.
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            bottom: -100, //dalgaların pozisyonu ne kadar eksideyse o kadar küçük alanda kullanılabilir
            right: animation.value, //animasyonun yönü belirleniyor
            child: ClipPath(
              clipper: WaveClipper(),
              child: Opacity(
                opacity: 0.5,
                child: Container(
                  color: Colors.deepPurple,
                  width: 900, //burası ne kadar geniş olursa dalga o kadar ağır ağır hareket ediyor
                  height: 200, //her bir dalganın yüksekliği belirleniyor
                ),
              ),
            ),
          ),
          Positioned(
            bottom: -100, //içinde bulunan widgetın yüksekliği kadar olması doğru görüntüyü sağlıyor
            left: animation.value,
            child: ClipPath(
              clipper: WaveClipper(),
              child: Opacity(
                opacity: 0.5,
                child: Container(
                  color: Colors.redAccent,
                  width: 900,
                  height: 200,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

