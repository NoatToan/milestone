import 'package:flutter/material.dart';
import 'package:milestone_project/core/themes/scaffold/app_base_view.dart';
import 'package:milestone_project/modules/counter/counter.dart';
import 'package:milestone_project/modules/home/view/home_view.dart';

/// {@template counter_page}
/// A [StatelessWidget] which is responsible for providing a
/// [CounterCubit] instance to the [CounterView].
/// {@endtemplate}
class HomePage extends AppBaseView {
  /// {@macro counter_page}
  const HomePage({super.key});

  @override
  Widget body(BuildContext context) {
    return const HomeView();
  }
}
