import 'package:flutter/material.dart';

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
  bool _isShowLoading = false;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      widget.child,
      if (_isShowLoading)
        const Opacity(
          opacity: 0,
          child: ModalBarrier(dismissible: false, color: Colors.black),
        ),
      if (_isShowLoading)
        Center(
          child: CircularProgressIndicator(
            color: Theme.of(context).primaryColor,
            backgroundColor: Colors.black.withOpacity(0.1),
          ),
        ),
    ]);
  }

  showLoading() => setState(() {
        _isShowLoading = true;
      });

  hideLoading() => setState(() {
        _isShowLoading = false;
      });
}
