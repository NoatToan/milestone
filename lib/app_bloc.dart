import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';

part 'app_event.dart';

part 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(AppState.initial()) {
    on<AppEventShowLoading>(
      (event, emit) {
        emit(state.copyWith(isLoading: true));
      },
      transformer: restartable(),
    );
    on<AppEventHideLoading>(
      (event, emit) {
        emit(state.copyWith(isLoading: false));
      },
      transformer: restartable(),
    );
  }
}
