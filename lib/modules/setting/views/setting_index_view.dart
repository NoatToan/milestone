import 'package:flutter/material.dart';
import 'package:milestone_project/app_inherited_widget.dart';
import 'package:milestone_project/core/routes/app_route.dart';
import 'package:milestone_project/core/themes/scaffold/app_base_view.dart';
import 'package:milestone_project/modules/setting/views/setting_profile_page.dart';

class SettingIndexView extends StatelessWidget {
  const SettingIndexView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'SettingIndex',
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, AppRouteNames.SETTING_PROFILE);
          },
          child: Text('Setting Profile'),
        ),
      ],
    );
  }
}
