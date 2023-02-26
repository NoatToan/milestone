import 'package:flutter/material.dart';

class AppBaseView extends StatelessWidget {
  const AppBaseView({
    Key? key,
  }) : super(key: key);

  // TODO: DEFINE default scaffold attribute here.
  Text get title => const Text('HEADER TITLE');

  Widget body(BuildContext context) {
    return const SizedBox();
  }

  Widget floatingActionButton(BuildContext context) => const SizedBox();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO: load dynamic layout scaffold
      appBar: AppBar(
        title: title,
      ),
      body: Center(
        child: body(context),
      ),
      floatingActionButton: floatingActionButton(context),
    );
  }
}
