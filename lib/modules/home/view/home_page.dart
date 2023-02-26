import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:milestone_project/modules/counter/counter.dart';
import 'package:milestone_project/modules/home/view/home_view.dart';

/// {@template counter_page}
/// A [StatelessWidget] which is responsible for providing a
/// [CounterCubit] instance to the [CounterView].
/// {@endtemplate}
class HomePage extends StatelessWidget {
  /// {@macro counter_page}
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeView();
  }
}
