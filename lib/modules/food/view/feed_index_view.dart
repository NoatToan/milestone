import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:milestone_project/app_inherited_widget.dart';
import 'package:milestone_project/core/blocs/feed/feed_bloc.dart';
import 'package:milestone_project/core/themes/headers/p_basic_header.dart';
import 'package:milestone_project/core/widgets/paginate/p_list_view_paginate.dart';

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
            child: BlocBuilder<FeedBloc, FeedState>(
              builder: (context, state) {
                bool isReachEnd = state.feedPaginate.total >= 10;
                return PListViewPaginate(
                  paginateData: state.feedPaginate,
                  onRefresh: () async {
                    // TODO: handle loading in repository

                    /// Uncomment this to show all screen loading
                    // AppInheritedWidget.of(context).showLoading();
                    BlocProvider.of<FeedBloc>(context).add(FeedEventRefresh());

                    /// Uncomment this to hide all screen loading
                    // Future.delayed(const Duration(seconds: 2), () {
                    //   AppInheritedWidget.of(context).hideLoading();
                    // });
                  },
                  onLoadMore: () {
                    BlocProvider.of<FeedBloc>(context).add(FeedEventLoadMore());
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
