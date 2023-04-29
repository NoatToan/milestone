import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:milestone_project/app_inherited_widget.dart';
import 'package:milestone_project/core/themes/headers/p_basic_header.dart';
import 'package:milestone_project/modules/food/view/widgets/feed_horizontal_reel_widget.dart';
import 'package:milestone_project/modules/food/view/widgets/feed_widget.dart';
import 'package:milestone_project/modules/food/vm/feed_bloc.dart';

class FeedIndexView extends StatelessWidget {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      floatHeaderSlivers: true,
      controller: _scrollController,
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return [
          PBasicHeader(
            innerBoxIsScrolled: innerBoxIsScrolled,
          )
        ];
      },
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: RefreshIndicator(
              onRefresh: () async {
                // TODO: handle loading in repository
                AppInheritedWidget.of(context).showLoading();
                BlocProvider.of<FeedBloc>(context).add(FeedEventReload());
                Future.delayed(const Duration(seconds: 2), () {
                  AppInheritedWidget.of(context).hideLoading();
                });
              },
              child: BlocBuilder<FeedBloc, FeedState>(
                builder: (context, state) {
                  return ListView.builder(
                    itemCount: state.feedPaginate.total,
                    itemBuilder: (BuildContext context, int index) {
                      /*
                    * First item is horizontal reel list. Do not to remove when Pull to Refresh
                    */
                      if (index == 0) {
                        return FeedHorizontalReelWidget();
                      }
                      return FeedWidget(
                        keyItem: index,
                        totalImages: 5,
                      );
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
