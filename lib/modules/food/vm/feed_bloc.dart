import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:milestone_project/app_bloc.dart';
import 'package:milestone_project/app_inherited_widget.dart';
import 'package:milestone_project/core/models/paginate/p_paginate.dart';

part 'feed_event.dart';

part 'feed_state.dart';

class FeedBloc extends Bloc<FeedEvent, FeedState> {
  FeedBloc() : super(FeedState.initial()) {
    on<FeedEventInitial>((event, emit) {});
    on<FeedEventReload>((event, emit) {
      emit(state.copyWith(
        feedPaginate: state.feedPaginate.copyWith(
          total: 10,
        ),
      ));
    });
    on<FeedEventReelLoadMore>((event, emit) {
      emit(state.copyWith(
        feedPaginate: state.feedPaginate.copyWith(
          total: state.feedPaginate.total + 10,
        ),
      ));
    });
    on<FeedEventLoadMore>((event, emit) {});
  }
}
