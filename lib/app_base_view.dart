import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:milestone_project/app_inherited_widget.dart';

abstract class AppBaseView extends StatelessWidget {
  const AppBaseView({
    Key? key,
  }) : super(key: key);

  Text get textTitle => const Text('HEADER TITLE');

  Widget body(BuildContext context);

  Widget floatingActionButton(BuildContext context) => const SizedBox();

  @override
  Widget build(BuildContext context) {
    if (kDebugMode && dotenv.get('APP_DEBUG_RENDER') == 'true') {
      print('${context.widget} rendered ----------------');
    }

    return Theme(
      data: AppInheritedWidget.of(context).themeData,
      child: Scaffold(
        // TODO: load dynamic layout scaffold
        appBar: AppBar(
          title: textTitle,
        ),

        body: Center(
          child: body(context),
        ),

        floatingActionButton: floatingActionButton(context),
      ),
    );
  }
}
