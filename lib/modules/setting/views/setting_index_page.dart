import 'package:flutter/material.dart';
import 'package:milestone_project/app_inherited_widget.dart';
import 'package:milestone_project/core/routes/app_route.dart';
import 'package:milestone_project/core/themes/scaffold/app_base_view.dart';
import 'package:milestone_project/modules/setting/views/setting_index_view.dart';
import 'package:milestone_project/modules/setting/views/setting_profile_page.dart';

class SettingIndexPage extends AppBaseView {
  const SettingIndexPage({Key? key}) : super(key: key);

  @override
  get appBar => AppBar(
        title: Text('Setting drawer'),
      );

  @override
  Widget body(BuildContext context) {
    return SettingIndexView();
  }
}
