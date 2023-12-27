import 'package:flutter/material.dart';
import 'package:tobeto_mobil/constants/image_text.dart';

class RecoveryPage extends StatefulWidget {
  const RecoveryPage({super.key});

  @override
  State<RecoveryPage> createState() => _RecoveryPageState();
}

class _RecoveryPageState extends State<RecoveryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white70,
        body: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              //En Üstteki ilk kutucuk
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  color: Color.fromARGB(255, 31, 14, 60)),
              padding: EdgeInsets.only(top: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(height: 75, width: 75, child: Image.asset(logo)),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Başvur"),
                    style: ElevatedButton.styleFrom(
                      onPrimary: Colors.black,
                      primary: Colors.green,
                      onSurface: Colors.black,
                      elevation: 30,
                      minimumSize: Size(75, 50),
                      shadowColor: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // İkinci Kutucuk
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black), color: Colors.black),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(height: 75, width: 75, child: Image.asset(logo)),
                  ElevatedButton(onPressed: () {}, child: Text("Başvur")),
                ],
              ),
            ),
            SizedBox(
              height: 300,
              child: Container(
                //3. kutucuk
                padding: EdgeInsets.only(left: 30, right: 30),
                margin: EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(color: Colors.white),
                child: Column(
                  children: [
                    const Text(
                      "Şifre Sıfırlama",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    const Padding(
                        padding: EdgeInsets.only(top: 10, bottom: 30)),
                    const TextField(
                      obscureText: false,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.pinkAccent, width: 3.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black, width: 1.0),
                        ),
                        hintText:
                            "Şifre sıfırlama linki için e-posta adresinizi giriniz",
                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(bottom: 30)),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("Gönder"),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
