import 'package:flutter/cupertino.dart';

class AppState extends StatefulWidget {
  const AppState({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  State<AppState> createState() => _AppStateState();
}

class _AppStateState extends State<AppState> {
  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
