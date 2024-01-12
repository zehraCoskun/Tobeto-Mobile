import 'package:flutter/material.dart';
import 'package:tobeto_mobil/models/education_model.dart';

class EducationDetailPage extends StatelessWidget {
  const EducationDetailPage({
    Key? key,
    required this.education,
  }) : super(key: key);

  final EducationModel education;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        titleTextStyle: const TextStyle(
          fontSize: 18,
          overflow: TextOverflow.fade,
        ),
        title: Text(education.title),
        actions: <Widget>[

          //begenen kisilerin listesini gosteren bir sayfaya gidilicek
          InkWell(
            onTap: () {},
            child: Text(
              education.likes.toString(),
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white54,
              ),
            ),
          ),

          //begenmeye bastiginda ici dolu kalp tekrar bastiginda ici bos kalp goruntulenecek ve begenen sayisi guncellenecek
          InkWell(
            onTap: () {},
            child: const Padding(
              padding: EdgeInsets.only(right: 15, left: 5),
              child: Icon(
                Icons.favorite_border_outlined,
                size: 28,
                color: Colors.white54,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Flexible(
            child: Container(
              alignment: Alignment.topCenter,
              margin: const EdgeInsets.all(20),
              height: size.height * 0.3,
              width: size.width * 0.9,
              color: Colors.black,
              child: Column(
                children: <Widget>[
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 20,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 5,
                  ),
                  height: 50,
                  color: Colors.black,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
