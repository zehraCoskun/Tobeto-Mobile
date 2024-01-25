import 'package:flutter/material.dart';
import 'package:tobeto_mobil/constants/image_text.dart';
import 'package:tobeto_mobil/core/widgets/basic_shadow.dart';
import 'package:tobeto_mobil/core/widgets/secondary_background.dart';
import 'package:tobeto_mobil/utils/theme/theme_ios.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SecondaryBackgroundWidget(
      child: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            MainPageContainer(
              widget: Row(
                children: [
                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [basicShadow()],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(60),
                      child: Image.asset(
                        ders2,
                        height: 120,
                        width: 120,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        "İstanbul Kodluyora Hoşgeldin !",
                        softWrap: true,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.black),
                      ),
                    ),
                  )
                ],
              ),
            ),
            MainPageTitleContainer(
                widget: Icon(
              Icons.push_pin_outlined,
              color: TobetoDarkColors.mor,
              size: 32,
            )),
          ],
        ),
      ),
    );
  }
}

class MainPageContainer extends StatelessWidget {
  const MainPageContainer({
    super.key,
    required this.widget,
  });
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.all(8),
      child: widget,
      decoration: BoxDecoration(
        color: Colors.blueGrey.shade100,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(),
        boxShadow: [
          basicShadow(),
          basicShadow(),
        ],
      ),
    );
  }
}

class MainPageTitleContainer extends StatelessWidget {
  const MainPageTitleContainer({
    super.key,
    required this.widget,
  });
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(2),
      child: widget,
      decoration: BoxDecoration(
        color: Colors.blueGrey.shade100,
        borderRadius: BorderRadius.circular(4),
        border: Border.all(),
        boxShadow: [
          basicShadow(),
        ],
      ),
    );
  }
}
