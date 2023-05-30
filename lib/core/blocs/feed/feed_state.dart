part of 'feed_bloc.dart';

class FeedState {
  const FeedState({
    required this.reelPaginate,
    required this.feedPaginate,
  });

  final PPaginateData<dynamic> reelPaginate;
  final PPaginateData<dynamic> feedPaginate;

  FeedState.initial()
      : this(
          reelPaginate: PPaginateData(total: 1),
          feedPaginate: PPaginateData(total: 1),
        );

  FeedState copyWith({
    PPaginateData<dynamic>? reelPaginate,
    PPaginateData<dynamic>? feedPaginate,
  }) {
    return FeedState(
      reelPaginate: reelPaginate ?? this.reelPaginate,
      feedPaginate: feedPaginate ?? this.feedPaginate,
    );
  }
}
