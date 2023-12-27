import 'package:flutter/material.dart';

class ApplicationCard extends StatelessWidget {
  const ApplicationCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //kutucuk*******
        width: 375,
        height: 180,
        margin: const EdgeInsets.only(
          top: 15,
          left: 10,
        ),

        padding: const EdgeInsets.only(
          top: 10,
        ),

        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Theme.of(context).cardColor),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                const Text(
                  " İstanbul Kodluyor Bilgilendirme",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                  textAlign: TextAlign.start,
                ),
                Stack(
                  //Stack*********
                  children: <Widget>[
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(left: 70),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.green.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Text(
                        textAlign: TextAlign.end,
                        'Kabul Edildi',
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ) //Stack*********
              ],
            ),
            const Row(
              children: [
                Icon(Icons.check, color: Colors.green),
                Text("İstanbul Kodluyor Başvuru Formu onaylandı.",
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.start),
              ],
            ),
            const Row(
              children: [
                Icon(
                  Icons.check,
                  color: Colors.green,
                ),
                Text(
                  "İstanbul Kodluyor Belge Yükleme Formu onaylandı.",
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
