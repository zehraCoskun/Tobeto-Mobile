import 'package:flutter/material.dart';
import 'package:tobeto_mobil/constants/pages/profile_text.dart';

final List<String> months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"];

class ActivityMapWidget extends StatelessWidget {
  const ActivityMapWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Aktivite Haritam",
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold),
          ),
          const Divider(),
          AspectRatio(
            aspectRatio: 3 / 1,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: <Widget>[
                      for (String month in months)
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Text(
                            month,
                            style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 14),
                          ),
                        ),
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        children: <Widget>[
                          Text(
                            "Mon",
                            style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 14),
                          ),
                          Text(
                            "Wed",
                            style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 14),
                          ),
                          Text(
                            "Fri",
                            style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 14),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          for (int i = 0; i < 52; i++)
                            Column(
                              children: <Widget>[
                                for (int j = 0; j < 7; j++)
                                  Container(
                                    margin: const EdgeInsets.all(1),
                                    height: 11,
                                    width: 11,
                                    color: () {
                                      //renklere örnek olması içi ekledim
                                      if (i % 7 == 0 && j % 6 == 0) {
                                        return rate4Color;
                                      } else if (i % 8 == 0 && j % 3 == 0) {
                                        return rate2Color;
                                      } else if (i % 3 == 0 && j % 2 == 0) {
                                        return rate1Color;
                                      } else {
                                        return rate0Color;
                                      }
                                    }(),
                                  ),
                              ],
                            ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text(
                "Less",
                style: TextStyle(fontSize: 14),
              ),
              RateBox(
                color: rate0Color,
              ),
              RateBox(
                color: rate1Color,
              ),
              RateBox(
                color: rate2Color,
              ),
              RateBox(
                color: rate3Color,
              ),
              RateBox(
                color: rate4Color,
              ),
              Text(
                " More",
                style: TextStyle(fontSize: 14),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class RateBox extends StatelessWidget {
  const RateBox({
    super.key,
    required this.color,
  });
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 5),
      width: 11,
      height: 11,
      color: color,
    );
  }
}
