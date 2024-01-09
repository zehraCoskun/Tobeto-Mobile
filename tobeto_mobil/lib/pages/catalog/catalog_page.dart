import 'package:flutter/material.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: controller,
                maxLength: 30,
                decoration: const InputDecoration(
                    counterText: "",
                    prefixIcon: Icon(Icons.search),
                    labelText: "Search",
                    labelStyle: TextStyle(
                      fontSize: 15,
                    )),
              ),
            ),
            Flexible(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 100,
                      child: Center(
                        child: Text(
                          "adsads",
                          style: Theme.of(context).textTheme.titleLarge?.merge(
                                const TextStyle(
                                  height: 2,
                                  shadows: [
                                    BoxShadow(
                                      color: Colors.black,
                                      spreadRadius: 2,
                                      blurRadius: 5,
                                    ),
                                    BoxShadow(
                                      color: Colors.blueGrey,
                                      spreadRadius: 2,
                                      blurRadius: 10,
                                    ),
                                    BoxShadow(
                                      color: Colors.black,
                                      spreadRadius: 2,
                                      blurRadius: 10,
                                    ),
                                  ],
                                ),
                              ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Expanded(
              flex: 9,
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 100,
                      color: Colors.yellow,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
