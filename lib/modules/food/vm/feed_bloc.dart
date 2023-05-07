import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:milestone_project/app_bloc.dart';
import 'package:milestone_project/app_inherited_widget.dart';
import 'package:milestone_project/core/models/paginate/p_paginate_data.dart';

part 'feed_event.dart';

part 'feed_state.dart';

class FeedBloc extends Bloc<FeedEvent, FeedState> {
  FeedBloc() : super(FeedState.initial()) {
    on<FeedEventInitial>((event, emit) async {
      await Future.delayed(const Duration(seconds: 5), () {}).whenComplete(() {
        emit(state.copyWith(
          feedPaginate: state.feedPaginate.copyWith(
            total: 10,
            status: PPaginateStatusEnum.loaded,
          ),
        ));
      });
    });
    on<FeedEventRefresh>((event, emit) {
      emit(state.copyWith(
        feedPaginate: state.feedPaginate.copyWith(
          total: 10,
        ),
      ));
    });
    on<FeedEventLoadMore>((event, emit) async {
      if (state.feedPaginate.isLoading) {
        return;
      }
      emit(state.copyWith(
        feedPaginate: state.feedPaginate.copyWith(
          status: PPaginateStatusEnum.loading,
        ),
      ));

      await Future.delayed(const Duration(seconds: 2), () {}).whenComplete(() {
        emit(state.copyWith(
          feedPaginate: state.feedPaginate.copyWith(
            total: state.feedPaginate.total + 10,
            status: PPaginateStatusEnum.loaded,
          ),
        ));
      });
    });

    on<FeedEventReelLoadMore>((event, emit) {});
  }
}
