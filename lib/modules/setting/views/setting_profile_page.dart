import 'package:flutter/material.dart';
import 'package:milestone_project/core/themes/scaffold/app_base_view.dart';

class SettingProfilePage extends AppBaseView {
  const SettingProfilePage({super.key});

  @override
  Text get textTitle => Text('hello');

  @override
  bool get extendBodyBehindAppBar => false;

  @override
  get appBar => AppBar(
        title: Text('123'),
      );

  @override
  Widget body(BuildContext context) {
    return Column(
      children: [
        Container(child: Text('SettingProfilePage')),
      ],
    );
  }
}

// class SettingProfilePage extends StatelessWidget {
//   const SettingProfilePage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('123'),
//       ),
//     );
//   }
// }
