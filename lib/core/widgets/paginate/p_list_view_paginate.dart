import 'package:flutter/material.dart';
import 'package:milestone_project/core/models/paginate/p_paginate_data.dart';
import 'package:milestone_project/modules/food/view/widgets/feed_horizontal_reel_widget.dart';
import 'package:milestone_project/modules/food/view/widgets/feed_widget.dart';

class PListViewPaginate extends StatefulWidget {
  const PListViewPaginate({
    super.key,
    required this.paginateData,
    required this.onLoadMore,
    required this.onRefresh,
  });

  final PPaginateData paginateData;
  final VoidCallback onLoadMore;
  final VoidCallback onRefresh;

  @override
  State<PListViewPaginate> createState() => _PListViewPaginateState();
}

class _PListViewPaginateState extends State<PListViewPaginate> {
  final _scrollController = ScrollController();
  final _scrollThreshold = 200.0;

  @override
  void initState() {
    _scrollController.addListener(_onScroll);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        widget.onRefresh();
      },
      child: widget.paginateData.isInitial
          ? Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(child: CircularProgressIndicator()),
            )
          : ListView.builder(
              controller: _scrollController,
              physics: const AlwaysScrollableScrollPhysics(),
              itemCount: widget.paginateData.total +
                  (widget.paginateData.isLoading ? 1 : 0),
              itemBuilder: (BuildContext context, int index) {
                /*
          * First item is horizontal reel list. Do not to remove when Pull to Refresh
          */
                if (index == 0) {
                  return FeedHorizontalReelWidget();
                }
                if (widget.paginateData.isLoading &&
                    index == widget.paginateData.total) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(child: CircularProgressIndicator()),
                  );
                }

                //handle dynamic widget by passed props
                return FeedWidget(
                  keyItem: index,
                  totalImages: 5,
                );
              },
            ),
    );
  }

  void _onScroll() {
    final maxScroll = _scrollController.position.maxScrollExtent;

    final currentScroll = _scrollController.position.pixels;

    if (maxScroll - currentScroll <= _scrollThreshold &&
        !widget.paginateData.isLoading) {
      widget.onLoadMore();
    }
  }
}
