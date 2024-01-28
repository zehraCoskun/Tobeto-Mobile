import 'package:flutter/material.dart';
import 'package:tobeto_mobil/constants/image_text.dart';
import 'package:tobeto_mobil/core/widgets/container_widget.dart';
import 'package:tobeto_mobil/core/widgets/secondary_background.dart';
import 'package:tobeto_mobil/dummy_data.dart';
import 'package:tobeto_mobil/pages/home_tabbar_pages/main_view.dart/bookmark_education_list.dart';
import 'package:tobeto_mobil/pages/home_tabbar_pages/main_view.dart/widgets/main_page_content.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});
  final educationList = educationModelData;
  @override
  Widget build(BuildContext context) {
    return SecondaryBackgroundWidget(
      child: Column(
        children: [
          Flexible(
            flex: 9,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const MainPageContent(
                    title: "İstanbul Kodluyor'a Hoşgeldin !",
                    imageUrl: ders2,
                    icon: Icons.push_pin_outlined,
                  ),
                  Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      BookmarkEducationList(
                        educationList: educationList,
                        icon: Icons.heart_broken,
                      ),
                      ContainerWidget(
                        margin: const EdgeInsets.symmetric(horizontal: 2, vertical: 0),
                        child: Text(
                          "Yarım kalanlar",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ),
                    ],
                  ),
                  Stack(children: [
                    BookmarkEducationList(
                      educationList: educationList,
                      icon: Icons.favorite,
                    ),
                    ContainerWidget(
                      margin: const EdgeInsets.symmetric(horizontal: 2, vertical: 0),
                      child: Text(
                        "Tekrar izlemek istediklerin",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ),
                  ]),
                  Stack(children: [
                    BookmarkEducationList(
                      educationList: educationList,
                      icon: Icons.check,
                    ),
                    ContainerWidget(
                      margin: const EdgeInsets.symmetric(horizontal: 2, vertical: 0),
                      child: Text(
                        "Tamamladıkların",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ),
                  ]),
                ],
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: SizedBox(
              height: 150,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite_border_rounded,
                        size: 48,
                      )),
                  Row(children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.local_fire_department_outlined,
                        size: 48,
                      ),
                    ),
                    Text(
                      "12",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 28, fontWeight: FontWeight.w700),
                    )
                  ])
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
