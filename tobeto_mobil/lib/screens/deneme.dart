import 'package:flutter/material.dart';

class Deneme extends StatelessWidget {
  const Deneme({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 500,
            height: 200,
            color: Colors.yellow,
          ),
          Container(
            width: 300,
            height: 200,
            color: Colors.red,
          ),
                    Container(
            width: 200,
            height: 100,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}