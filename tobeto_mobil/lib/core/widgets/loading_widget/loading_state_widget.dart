import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tobeto_mobil/core/widgets/loading_widget/loading_state_widget_controller.dart';

class LoadingStateWidget {
  LoadingStateWidget._sharedInstance();

  static final LoadingStateWidget _shared = LoadingStateWidget._sharedInstance();

  factory LoadingStateWidget.instance() {
    return _shared;
  }

  LoadingStateWidgetController? controller;

  void show({
    required BuildContext context,
    required String text,
    void Function()? onClose,
  }) {
    if (controller?.update(text) ?? false) {
      return;
    } else {
      controller = showOverlay(
        context: context,
        text: text,
        onClose: onClose,
      );
    }
  }

  void hide() {
    controller?.close();
    controller = null;
  }

  LoadingStateWidgetController showOverlay({
    required BuildContext context,
    required String text,
    void Function()? onClose,
  }) {
    final text0 = StreamController<String>();
    text0.add(text);

    final state = Overlay.of(context);
    final renderBox = context.findRenderObject() as RenderBox;
    final size = renderBox.size;

    final overlay = OverlayEntry(
      builder: (context) {
        return Material(
          color: Colors.black.withAlpha(150),
          child: Center(
            child: Container(
              constraints: BoxConstraints(
                maxWidth: size.width * 0.8,
                maxHeight: size.height * 0.8,
                minWidth: size.width * 0.5,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const SizedBox(height: 10),
                      if (onClose == null) const CircularProgressIndicator(),
                      const SizedBox(height: 20),
                      StreamBuilder(
                        stream: text0.stream,
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            return Text(
                              snapshot.data as String,
                              style: Theme.of(context).textTheme.labelLarge,
                              textAlign: TextAlign.center,
                            );
                          } else {
                            return Container();
                          }
                        },
                      ),
                      if (onClose != null)
                        ElevatedButton(
                          onPressed: onClose,
                          child: const Text("Close"),
                        )
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );

    state.insert(overlay);

    return LoadingStateWidgetController(
      close: () {
        text0.close();
        overlay.remove();
        return true;
      },
      update: (text) {
        text0.add(text);
        return true;
      },
    );
  }
}
