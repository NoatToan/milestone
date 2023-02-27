import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:milestone_project/app_base_view.dart';
import 'package:milestone_project/modules/counter/counter.dart';

/// {@template counter_view}
/// A [StatelessWidget] which reacts to the provided
/// [CounterCubit] state and notifies it in response to user input.
/// {@endtemplate}
class CounterView extends AppBaseView {
  /// {@macro counter_view}
  const CounterView({super.key});

  @override
  Text get textTitle => const Text('Counter page');

  @override
  Widget floatingActionButton(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        FloatingActionButton(
          heroTag: '1',
          key: const Key('counterView_increment_floatingActionButton'),
          child: const Icon(Icons.add),
          onPressed: () => context.read<CounterCubit>().increment(),
        ),
        const SizedBox(height: 8),
        FloatingActionButton(
          heroTag: '2',
          key: const Key('counterView_decrement_floatingActionButton'),
          child: const Icon(Icons.remove),
          onPressed: () => context.read<CounterCubit>().decrement(),
        ),
      ],
    );
  }

  @override
  Widget body(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        Center(
          child: BlocBuilder<CounterCubit, int>(
            builder: (context, state) {
              return Text('$state', style: textTheme.displayMedium);
            },
          ),
        ),
      ],
    );
  }
}
