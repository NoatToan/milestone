import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:milestone_project/app_inherited_widget.dart';
import 'package:milestone_project/app_state.dart';
import 'package:milestone_project/modules/counter_app.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:milestone_project/modules/home/view/home_page.dart';

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

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: dotenv.get('APP_NAME'),
      // TODO: Load dynamic theme feature
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      home: const AppState(
        child: AppInheritedWidget(
          color: Colors.red,
          child: HomePage(),
        ),
      ),
    );
  }
}
