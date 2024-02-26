import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:tobeto_mobil/core/widgets/video_player/video_player_widget.dart';
import 'package:tobeto_mobil/models/catalog/catalog_model.dart';
import 'package:video_player/video_player.dart';

class CatalogDetailsPage extends StatefulWidget {
  const CatalogDetailsPage({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  final CatalogModel catalog;

  @override
  State<CatalogDetailsPage> createState() => _EducationDetailsPageState();
}

class _EducationDetailsPageState extends State<CatalogDetailsPage> {
  late VideoPlayerController controller;

  @override
  void initState() {
    super.initState();
    controller = VideoPlayerController.networkUrl(Uri.parse(widget.catalog.url))
      ..addListener(() => setState(() {}))
      ..setLooping(false)
      ..initialize();
  }

  @override
  void dispose() {
    controller.dispose();
    _dispose();
    super.dispose();
  }

  void _dispose() async {
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    await SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: SystemUiOverlay.values,
    );
  }

  void setSource(String url) async {
    await controller.dispose();
    controller = VideoPlayerController.networkUrl(Uri.parse(url))
      ..addListener(() => setState(() {}))
      ..setLooping(false)
      ..initialize();
  }

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        final isPortrait = orientation == Orientation.portrait;

        if (!isPortrait) {
          return buildFullscreen();
        }
        return buildPortrait();
      },
    );
  }

  Widget buildFullscreen() {
    return Scaffold(
      body: VideoPlayerWidget(
        content: widget.catalog.url,
        isFullscreen: true,
        controller: controller,
      ),
    );
  }

  Widget buildPortrait() {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Theme.of(context).appBarTheme.backgroundColor,
        child: Column(
          children: [
            VideoPlayerWidget(
              content: widget.catalog.url,
              controller: controller,
            ),
            const Divider(),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.catalog.title, style: Theme.of(context).textTheme.titleLarge),
                      Text(
                        'Eğitmen : ${widget.catalog.trainer}',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text(
                        'Yayınlanma Tarihi : ${DateFormat.yMd().format(widget.catalog.releaseDate)}',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text(
                        'Eğitim Süresi : ${widget.catalog.totalDuration}',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
