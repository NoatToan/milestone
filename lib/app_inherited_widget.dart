import 'package:flutter/material.dart';
import 'package:milestone_project/core/models/model_user.dart';

class AppInheritedWidget extends InheritedWidget {
  const AppInheritedWidget({
    super.key,
    required this.themeData,
    required super.child,
    this.auth = ModelUser.ex,
  });

  final ThemeData themeData;

  // TODO: auth state will be passed from App stateful, and all ancestors are able to access this auth
  final ModelUser auth;

  static AppInheritedWidget? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AppInheritedWidget>();
  }

  static AppInheritedWidget of(BuildContext context) {
    final AppInheritedWidget? result = maybeOf(context);
    assert(result != null, 'No AppInheritedWidget found in context');
    
    return result!;
  }

  @override
  bool updateShouldNotify(AppInheritedWidget oldWidget) {
    bool shouldUpdate = themeData != oldWidget.themeData;

    return shouldUpdate;
  }
}
