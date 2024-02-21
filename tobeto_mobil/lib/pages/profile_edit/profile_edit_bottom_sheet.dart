import 'package:flutter/material.dart';
import 'package:tobeto_mobil/core/widgets/shadows.dart';
import 'package:tobeto_mobil/models/user/talent_model.dart';
import 'package:tobeto_mobil/utils/theme/theme_ios.dart';

class ProfileEditBottomSheet extends StatelessWidget {
  const ProfileEditBottomSheet({
    Key? key,
    this.talents,
  }) : super(key: key);

  final List<TalentModel>? talents;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1 / 1,
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 100,
              childAspectRatio: 2 / 1,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
            ),
            padding: const EdgeInsets.all(16),
            itemCount: talents?.length ?? 0,
            itemBuilder: (context, index) {
              return Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    containerBasicShadow(),
                  ],
                ),
                child: talents?[index] != null
                    ? InkWell(
                        child: Text(
                          talents![index].name,
                          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                fontSize: 16,
                              ),
                        ),
                        onTap: () {},
                      )
                    : null,
              );
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: Icon(
                Icons.close_outlined,
                size: 32,
                color: TobetoDarkColors.kirmizi,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.check,
                size: 32,
                color: TobetoDarkColors.yesil,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
