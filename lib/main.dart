import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:milestone_project/app_inherited_widget.dart';
import 'package:milestone_project/core/dio/dio_provider.dart';

// import 'package:milestone_project/core/app_food/requests/nutrition_params.dart';
import 'package:milestone_project/core/themes/theme_contrast.dart';
import 'package:milestone_project/core/themes/theme_default.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:milestone_project/modules/home/view/home_page.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

void main() async {
  var envName = const String.fromEnvironment('env_name', defaultValue: '');
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
      print(transition);
    }
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ThemeCubit(),
      child: BlocBuilder<ThemeCubit, ThemeData>(
        builder: (_, theme) {
          return AppInheritedWidget(
            themeData: theme,
            child: MaterialApp(
              title: dotenv.get('APP_NAME'),
              home: const HomePage(),
            ),
          );
        },
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
