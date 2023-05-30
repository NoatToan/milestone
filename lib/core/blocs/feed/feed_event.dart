part of 'feed_bloc.dart';

@immutable
abstract class FeedEvent {}

class FeedEventInitial extends FeedEvent {
  FeedEventInitial();
}

// Feed
class FeedEventLoadMore extends FeedEvent {}

class FeedEventRefresh extends FeedEvent {}

// Reel
class FeedEventReelLoadMore extends FeedEvent {}
