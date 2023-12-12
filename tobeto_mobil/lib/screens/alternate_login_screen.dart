import 'package:flutter/material.dart';
import 'package:tobeto_mobil/colors/tobeto_colors.dart';
import 'package:tobeto_mobil/consts/constants.dart';

class AlternateLoginScreen extends StatelessWidget {
  const AlternateLoginScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.blue.withOpacity(0.7),
              Colors.deepPurple.withOpacity(0.8),
              Colors.deepOrange.withOpacity(0.8),
            ],
          ),
          // image: const DecorationImage(
          //   image: AssetImage("assets/images/tobetoBackground.png"),
          //   fit: BoxFit.fill,
          // ),
        ),
        child: Stack(
          alignment: Alignment.center,
          fit: StackFit.loose,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(15),
              ),
              height: size.height * 0.37,
              width: size.width * 0.85,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Image(
                    image: AssetImage("assets/images/tobeto-logo.png"),
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 20),
                    child: TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.person),
                          hintText: deneme123,
                          hintStyle: const TextStyle(color: Colors.black54),
                          labelText: deneme123,
                          labelStyle: const TextStyle(color: Colors.black54),
                          isDense: true,
                          contentPadding: const EdgeInsets.only(),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 20),
                    child: TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.lock),
                          hintText: deneme123,
                          hintStyle: const TextStyle(color: Colors.black54),
                          labelText: deneme123,
                          labelStyle: const TextStyle(color: Colors.black54),
                          isDense: true,
                          contentPadding: const EdgeInsets.only(),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(),
                    child: Text("Login"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
