import 'package:flutter/foundation.dart' show immutable;

typedef CloseLoadingStateWidget = bool Function();
typedef UpdateLoadingStateWidget = bool Function(String text);

@immutable
class LoadingStateWidgetController {
  final CloseLoadingStateWidget close;
  final UpdateLoadingStateWidget update;

  const LoadingStateWidgetController({
    required this.close,
    required this.update,
  });
}
