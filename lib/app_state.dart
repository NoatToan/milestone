part of 'app_bloc.dart';

class AppState {
  const AppState({
    required this.isLoading,
  });

  final bool isLoading;

  AppState.initial() : this(isLoading: false);

  AppState copyWith({
    bool? isLoading,
  }) {
    return AppState(
      isLoading: isLoading ?? this.isLoading,
    );
  }
}
