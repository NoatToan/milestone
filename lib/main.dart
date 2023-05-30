import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:milestone_project/app.dart';
import 'package:milestone_project/app_bloc.dart';
import 'package:milestone_project/app_inherited_widget.dart';
import 'package:milestone_project/core/routes/app_route.dart';

import 'package:milestone_project/core/themes/theme_contrast.dart';
import 'package:milestone_project/core/themes/theme_default.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:milestone_project/modules/setting/views/setting_profile_page.dart';

void main() async {
  var envName = const String.fromEnvironment('env_name', defaultValue: '.env');
  if (kDebugMode) {
    print('App get env name from build arguments $envName');
  }

  await dotenv.load(fileName: envName);

  if (kDebugMode) {
    print('App loaded env config from $envName successfully');
    print('------------------------');
    print('${dotenv.get('APP_NAME')} ready !!! ');
    print('------------------------');
  }

  Bloc.observer = const AppBlocObserver();
  runApp(const MyApp());
}

/// Custom [BlocObserver] that observes all bloc and cubit state changes.
class AppBlocObserver extends BlocObserver {
  const AppBlocObserver();

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);

    if (bloc is Cubit) {
      if (kDebugMode) {
        print(change);
      }
    }
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    if (kDebugMode) {
      log(transition.toString(), name: 'BLOC TRANSITION');
    }
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AppBloc>(
          create: (BuildContext context) => AppBloc(),
        ),
      ],
      child: BlocProvider(
        create: (_) => ThemeCubit(),
        child: BlocBuilder<ThemeCubit, ThemeData>(
          builder: (_, theme) {
            return AppInheritedWidget(
              context: context,
              themeData: theme,
              isLoading:
                  BlocProvider.of<AppBloc>(_, listen: true).state.isLoading,
              showLoading: () => BlocProvider.of<AppBloc>(_, listen: false)
                ..add(AppEventShowLoading()),
              hideLoading: () => BlocProvider.of<AppBloc>(_, listen: false)
                ..add(AppEventHideLoading()),
              child: MaterialApp(
                debugShowCheckedModeBanner: false,
                title: dotenv.get('APP_NAME'),
                routes: AppRoute.MAIN_ROUTES,
                builder: (BuildContext context, Widget? child) {
                  return App(child: child);
                },
              ),
            );
          },
        ),
      ),
    );
  }
}

class ThemeCubit extends Cubit<ThemeData> {
  ThemeCubit() : super(_themeDefault);

  static final _themeDefault = ThemeDefault.themeData;
  static final _themeDark = ThemeContrast.themeData;

  void toggleTheme() {
    emit(state.brightness == Brightness.dark ? _themeDefault : _themeDark);
  }
}
