import 'package:flutter/material.dart';

final List<String> months = [
  "Jan",
  "Feb",
  "Mar",
  "Apr",
  "May",
  "Jun",
  "Jul",
  "Aug",
  "Sep",
  "Oct",
  "Nov",
  "Dec",
];

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
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(fontWeight: FontWeight.bold),
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
                            style: const TextStyle(fontSize: 15),
                          ),
                        ),
                    ],
                  ),
                  Row(
                    children: [
                      const Column(
                        children: <Widget>[
                          Text(
                            "Mon",
                            style: TextStyle(fontSize: 15),
                          ),
                          Text(
                            "Wed",
                            style: TextStyle(fontSize: 15),
                          ),
                          Text(
                            "Fri",
                            style: TextStyle(fontSize: 15),
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
                                    color: Colors.red,
                                    child: Center(
                                      child: Text(
                                        j.toString(),
                                        style: const TextStyle(fontSize: 5),
                                      ),
                                    ),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text(
                "Less",
                style: TextStyle(fontSize: 14),
              ),
              Container(
                margin: const EdgeInsets.only(left: 5),
                width: 11,
                height: 11,
                color: Colors.black87,
              ),
              Container(
                width: 11,
                height: 11,
                color: Colors.green.shade200,
              ),
              Container(
                width: 11,
                height: 11,
                color: Colors.green.shade400,
              ),
              Container(
                width: 11,
                height: 11,
                color: Colors.green.shade600,
              ),
              Container(
                margin: const EdgeInsets.only(right: 5),
                width: 11,
                height: 11,
                color: Colors.green.shade900,
              ),
              Text(
                "More",
                style: TextStyle(fontSize: 14),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
