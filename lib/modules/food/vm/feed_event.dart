part of 'feed_bloc.dart';

@immutable
abstract class FeedEvent {}

class FeedEventInitial extends FeedEvent {
  FeedEventInitial();
}

// Feed
class FeedEventLoadMore extends FeedEvent {}

class FeedEventReload extends FeedEvent {}

// Reel
class FeedEventReelLoadMore extends FeedEvent {}

// Common event
class FeedEventOnProgress extends FeedEvent {}

class FeedEventOnDone extends FeedEvent {}
