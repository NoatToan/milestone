import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:milestone_project/core/models/base_model_user.dart';

class AppInheritedWidget extends InheritedWidget {
  const AppInheritedWidget({
    super.key,
    required this.color,
    required super.child,
    this.auth = BaseModelUser.ex,
  });

  final Color color;

  // TODO: auth state will be passed from App stateful, and all ancestors are able to access this auth
  final BaseModelUser auth;

  static AppInheritedWidget? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AppInheritedWidget>();
  }

  static AppInheritedWidget of(BuildContext context) {
    final AppInheritedWidget? result = maybeOf(context);
    assert(result != null, 'No FrogColor found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(AppInheritedWidget oldWidget) {
    bool shouldUpdate = color != oldWidget.color;
    if (kDebugMode) {
      print('AppInheritedWidget re-render');
    }

    return shouldUpdate;
  }
}
