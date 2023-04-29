import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:milestone_project/app_bloc.dart';
import 'package:milestone_project/app_inherited_widget.dart';

abstract class AppBaseView extends StatefulWidget {
  const AppBaseView({
    Key? key,
  }) : super(key: key);

  Widget body(BuildContext context);

  Text get textTitle => const Text('HEADER TITLE');

  @override
  State<AppBaseView> createState() => _AppBaseViewState();
}

class _AppBaseViewState extends State<AppBaseView> {

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
        appBar: PreferredSize(
          preferredSize: Size.zero,
          child: Container(
            color: AppInheritedWidget.of(context).themeData.primaryColor,
          ),
        ),
        body: Stack(children: [
          widget.body(context),
          if (BlocProvider.of<AppBloc>(context, listen: true).state.isLoading)
            const Opacity(
              opacity: 0.05,
              child:
                  ModalBarrier(dismissible: false, color: Colors.transparent),
            ),
          if (BlocProvider.of<AppBloc>(context, listen: true).state.isLoading)
            Center(
              child: CircularProgressIndicator(
                color: Theme.of(context).primaryColor,
                backgroundColor: Colors.black.withOpacity(0.1),
              ),
            ),
        ]),
        floatingActionButton: floatingActionButton(context),
        extendBody: true,
        bottomNavigationBar: null,
      ),
    );
  }
}
