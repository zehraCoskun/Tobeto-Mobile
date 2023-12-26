import 'package:flutter/material.dart';

class EducationItemWidget extends StatelessWidget {
  const EducationItemWidget({
    Key? key,
    this.image,
    required this.title,
    required this.time,
  }) : super(key: key);

  final ImageProvider<Object>? image;
  final String title;
  final String time;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      margin: const EdgeInsets.only(bottom: 16),
      width: size.width * 0.9,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          buildImage(),
          buildBody(),
          buildButton(size.width * 0.8),
        ],
      ),
    );
  }

  Widget buildImage() {
    return AspectRatio(
      aspectRatio: 4 / 2,
      child: image != null
          ? Image(
              image: image!,
            )
          : const Icon(
              Icons.image_outlined,
              size: 50,
            ),
    );
  }

  Widget buildBody() {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
          ),
          Text(
            time,
          ),
        ],
      ),
    );
  }

  Widget buildButton(double width) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.grey.shade300,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          fixedSize: Size.fromWidth(width),
        ),
        child: const Text(
          "Eğitime Git",
          style: TextStyle(
            color: Colors.black87,
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}
