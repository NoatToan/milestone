import 'package:flutter/material.dart';

abstract class AppBaseView extends StatelessWidget {
  const AppBaseView({
    Key? key,
  }) : super(key: key);

  // TODO: DEFINE default scaffold attribute here.
  Text get textTitle => const Text('HEADER TITLE');

  Widget body(BuildContext context);

  Widget floatingActionButton(BuildContext context) => const SizedBox();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO: load dynamic layout scaffold
      appBar: AppBar(
        title: textTitle,
      ),
      body: Center(
        child: body(context),
      ),
      floatingActionButton: floatingActionButton(context),
    );
  }
}
