import 'package:flutter/widgets.dart';
import 'package:milestone_project/modules/food/view/feed_index_page.dart';
import 'package:milestone_project/modules/home/view/home_page.dart';
import 'package:milestone_project/modules/profile/views/profile_index_page.dart';
import 'package:milestone_project/modules/setting/views/setting_index_page.dart';
import 'package:milestone_project/modules/setting/views/setting_profile_page.dart';

class AppRouteNames {
  // INDEX
  static String INDEX = '/';

  // FOOD
  static String FOOD = '/food';

  // PROFILE
  static String PROFILE = '/profile';

  // SETTING
  static String SETTING = '/setting';
  static String SETTING_PROFILE = '/setting/profile';
}

class AppRoute {
  static final Map<String, WidgetBuilder> MAIN_ROUTES = {
    AppRouteNames.INDEX: (context) => HomePage(),
    AppRouteNames.FOOD: (context) => FeedIndexPage(),
    AppRouteNames.PROFILE: (context) => ProfileIndexPage(),
    AppRouteNames.SETTING: (context) => SettingIndexPage(),
  };

  static final Map<String, WidgetBuilder> SETTING_ROUTES = {
    AppRouteNames.SETTING_PROFILE: (context) => SettingProfilePage(),
  };
}
