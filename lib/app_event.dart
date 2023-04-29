part of 'app_bloc.dart';

abstract class AppEvent {
  const AppEvent();
}

class AppEventShowLoading extends AppEvent {}
class AppEventHideLoading extends AppEvent {}
