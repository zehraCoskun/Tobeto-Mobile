import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:tobeto_mobil/constants/image_text.dart';
import 'package:tobeto_mobil/core/widgets/basic_shadow.dart';
import 'package:tobeto_mobil/pages/drawer_list_pages/profile/profile_picture/animated_wave_curves.dart';

class ProfilePicture extends StatefulWidget {
  const ProfilePicture({
    super.key,
    this.height,
    this.userId,
  });
  final double? height;
  final String? userId;

  @override
  State<ProfilePicture> createState() => _ProfilePictureState();
}

class _ProfilePictureState extends State<ProfilePicture> {
  late String? _imageUrl;

  @override
  void initState() {
    super.initState();
    _getImageUrl();
  }

  Future<void> _getImageUrl() async {
    String fileName = widget.userId != null ? "${widget.userId}.jpg" : "profile_picture.jpg";
    Reference ref = FirebaseStorage.instance.ref().child(fileName);

    try {
      String url = await ref.getDownloadURL();
      setState(() {
        _imageUrl = url;
      });
    } catch (e) {
      print("profile pic : ${e}");
      setState(() {
        _imageUrl = null;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.0,
      child: Stack(
        alignment: Alignment.center,
        children: [
          const AnimatedWaveCurves(),
          Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [basicShadow()],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(60),
              child: _imageUrl != null
                  ? Image.network(
                      _imageUrl!,
                      height: 120,
                      width: 120,
                      fit: BoxFit.cover,
                    )
                  : Image.asset(
                      ders2, // Varsayılan resim dosyası
                      height: 120,
                      width: 120,
                      fit: BoxFit.cover,
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
