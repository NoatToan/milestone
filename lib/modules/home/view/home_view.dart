import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:milestone_project/app_base_view.dart';
import 'package:milestone_project/core/factories/factory_model.dart';
import 'package:milestone_project/main.dart';
import 'package:milestone_project/modules/counter/counter.dart';

class HomeView extends AppBaseView {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget body(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(flex: 3, child: const SizedBox()),
        Flexible(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ElevatedButton(
                  child: const Text('Goto Bloc counter'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        /// nav to new page
                        builder: (context) => const CounterPage(),

                        /// nav to new app
                        // builder: (context) => const CounterApp(),
                      ),
                    );
                  },
                ),
                ElevatedButton(
                  child: const Text('Fake usernames'),
                  onPressed: () {
                    List<dynamic> userNames = FactoryModel.make(type: 'NAME');
                    print(userNames);
                  },
                ),
                ElevatedButton(
                  child: const Text('Change theme'),
                  onPressed: () {
                    context.read<ThemeCubit>().toggleTheme();
                  },
                ),
              ],
            )),
      ],
    );
  }
}
