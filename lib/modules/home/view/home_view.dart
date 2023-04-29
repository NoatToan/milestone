import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:milestone_project/app_bloc.dart';
import 'package:milestone_project/app_inherited_widget.dart';
import 'package:milestone_project/core/factories/factory_model.dart';
import 'package:milestone_project/core/routes/app_route.dart';
import 'package:milestone_project/main.dart';
import 'package:milestone_project/modules/counter/counter.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  child: const Text('My app'),
                  onPressed: () {
                    Navigator.pushNamed(context, AppRouteNames.FOOD);
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
                ElevatedButton(
                  child: const Text('showLoading'),
                  onPressed: () {
                    AppInheritedWidget.of(context).showLoading();
                  },
                ),
              ],
            )),
      ],
    );
  }
}
