import 'package:flutter/material.dart';
import 'package:milestone_project/app_base_view.dart';
import 'package:milestone_project/modules/counter_app.dart';

class HomeView extends AppBaseView {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget body(BuildContext context) {
    return Column(
      children: [
        const Text('This is home view'),
        ElevatedButton(
          child: const Text('Goto counter cubit APP'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const CounterApp()),
            );
          },
        ),
      ],
    );
  }
}
