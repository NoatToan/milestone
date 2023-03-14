import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:milestone_project/core/remote_data_source/food_remote_resource.dart';
import 'package:milestone_project/modules/list_animation/view/list_animation_view.dart';
import 'package:milestone_project/modules/list_animation/vm/food_bloc.dart';

class ListAnimationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => FoodBeanBloc(
        FoodBeenState.initState,
        foodRemoteResource: FoodRemoteResource(),
      )..add(
          FoodInitEvent(),
        ),
      child: ListAnimationView(),
    );
  }
}
