part of 'feed_bloc.dart';

class FeedState {
  const FeedState({
    required this.reelPaginate,
    required this.feedPaginate,
  });

  final PPaginate<dynamic> reelPaginate;
  final PPaginate<dynamic> feedPaginate;

  FeedState.initial()
      : this(
          reelPaginate: PPaginate(total: 1),
          feedPaginate: PPaginate(total: 1),
        );

  FeedState copyWith({
    PPaginate<dynamic>? reelPaginate,
    PPaginate<dynamic>? feedPaginate,
  }) {
    return FeedState(
      reelPaginate: reelPaginate ?? this.reelPaginate,
      feedPaginate: feedPaginate ?? this.feedPaginate,
    );
  }
}
