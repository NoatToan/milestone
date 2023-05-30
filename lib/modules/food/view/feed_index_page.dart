import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:milestone_project/core/blocs/feed/feed_bloc.dart';
import 'package:milestone_project/core/themes/scaffold/app_base_view.dart';
import 'package:milestone_project/modules/food/view/feed_index_view.dart';

class FeedIndexPage extends AppBaseView {
  const FeedIndexPage({super.key});

  @override
  Widget body(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return FeedBloc()..add(FeedEventInitial());
      },
      child: FeedIndexView(),
    );
  }
}
