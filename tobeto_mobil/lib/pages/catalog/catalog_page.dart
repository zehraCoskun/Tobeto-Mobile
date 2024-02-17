import 'package:flutter/material.dart';
import 'package:tobeto_mobil/core/screens/global_scaffold.dart';
import 'package:tobeto_mobil/core/widgets/background/secondary_background.dart';
import 'package:tobeto_mobil/pages/catalog/catalog_body.dart';
import 'package:tobeto_mobil/pages/catalog/catalog_category/catalog_header.dart';
import 'package:tobeto_mobil/pages/catalog/catalog_filter/catalog_filter_body.dart';
import 'package:tobeto_mobil/pages/catalog/catalog_filter/catalog_filter_header.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

class CatalogPage extends StatefulWidget {
  const CatalogPage({
    Key? key,
  }) : super(key: key);

  @override
  State<CatalogPage> createState() => _CatalogPageState();
}

class _CatalogPageState extends State<CatalogPage> {
  bool _isKeyboardVisible = false;

  _CatalogPageState();
  @override
  void initState() {
    super.initState();
    KeyboardVisibilityController().onChange.listen((bool visible) {
      setState(() {
        _isKeyboardVisible = visible;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return GlobalScaffold(
      appBar: AppBar(
        title: const CatalogHeader(),
        toolbarHeight: 80,
      ),
      body: SecondaryBackgroundWidget(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 8),
            if (!_isKeyboardVisible) const CatalogFilterHeader(),
            const SizedBox(height: 5),
            if (!_isKeyboardVisible) const CatalogFilterBody(),
            const CatalogBody(),
          ],
        ),
      ),
    );
  }
}
