import 'package:flutter/material.dart';
import 'package:tobeto_mobil/models/firebase_models/education_model.dart';

class EducationDetailPage extends StatelessWidget {
  const EducationDetailPage({
    Key? key,
    required this.education,
  }) : super(key: key);

  final EducationModel education;

  @override
  Widget build(BuildContext context) {
    //final size = MediaQuery.of(context).size;

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
            child: const Text(
              "200",
              style: TextStyle(
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
          const Flexible(
            flex: 5,
            child: Column(
              children: <Widget>[],
            ),
          ),
          const Spacer(),
          const Divider(
            indent: 10,
            endIndent: 10,
            thickness: 0.8,
          ),
          Expanded(
            flex: 5,
            child: ListView.builder(
              itemCount: education.content.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 5,
                  ),
                  height: 50,
                  color: Colors.black,
                  child: Text(
                    education.content[index],
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
