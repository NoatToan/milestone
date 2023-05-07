import 'package:flutter/material.dart';
import 'package:milestone_project/core/themes/p_bottom_nav.dart';
import 'package:milestone_project/modules/food/view/feed_index_page.dart';
import 'package:milestone_project/modules/home/view/home_page.dart';
import 'package:milestone_project/modules/profile/views/profile_index_page.dart';
import 'package:milestone_project/modules/setting/views/setting_index_page.dart';

class App extends StatefulWidget {
  const App({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget? child;

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: IndexedStack(
        index: _selectedIndex,
        children: const [
          HomePage(),
          FeedIndexPage(),
          ProfileIndexPage(),
          SettingIndexPage(),
        ],
      ),
      bottomNavigationBar: PBottomNav(
        onTabChange: (newIndex) {
          _selectedIndex = newIndex;
          setState(() {});
        },
      ),
    );
  }
}
