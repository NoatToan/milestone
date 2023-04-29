import 'package:flutter/widgets.dart';
import 'package:milestone_project/modules/food/view/feed_index_page.dart';
import 'package:milestone_project/modules/home/view/home_page.dart';
import 'package:milestone_project/modules/profile/views/profile_index_page.dart';
import 'package:milestone_project/modules/setting/views/setting_index_page.dart';

class AppRouteNames {
  // DRAWER
  static String INDEX = '/';
  static String FOOD = '/food';
  static String PROFILE = '/profile';
  static String SETTING = '/setting';
  // END DRAWER
}

class AppRoute {
  static final Map<String, WidgetBuilder> ROUTES = {
    AppRouteNames.INDEX: (context) => HomePage(),
    AppRouteNames.FOOD: (context) => FeedIndexPage(),
    AppRouteNames.PROFILE: (context) => ProfileIndexPage(),
    AppRouteNames.SETTING: (context) => SettingIndexPage(),
  };
}
