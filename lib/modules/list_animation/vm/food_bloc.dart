import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:milestone_project/core/app_food/models/food_bean.dart';
import 'package:milestone_project/core/app_food/models/nutrition.dart';
import 'package:milestone_project/core/app_food/models/requests/nutrition_params.dart';
import 'package:milestone_project/core/remote_data_source/food_remote_resource.dart';

abstract class FoodEvent {}

class FoodInitEvent extends FoodEvent {}

class FoodPaginateLoadMore extends FoodEvent {}

class FoodBeenState {
  FoodBeenState({
    required this.nutritionsPaginate,
  });

  final List<Nutrition> nutritionsPaginate;

  static FoodBeenState initState = FoodBeenState(nutritionsPaginate: []);

  FoodBeenState copyWith({
    List<Nutrition>? nutritionsPaginate,
  }) {
    return FoodBeenState(
      nutritionsPaginate: this.nutritionsPaginate,
    );
  }
// List<Object?> get props => [status, initialTodo, title, description];
}

class FoodBeanBloc extends Bloc<FoodEvent, FoodBeenState> {
  FoodBeanBloc(
    super.initialState, {
    required this.foodRemoteResource,
  }) {
    on<FoodInitEvent>((FoodInitEvent e, emit) async {
      // FoodResponse res = await this.foodRemoteResource.getFood(NutritionParams(
      //       nutritionType: 'logging',
      //       inGr: 'red%20apple',
      //     ));
      //
      // emit(state.copyWith(
      //   nutritionsPaginate: res.nutritions,
      // ));
    });

    on<FoodPaginateLoadMore>((FoodPaginateLoadMore e, emit) async {
      final FoodResponse res =
          await this.foodRemoteResource.getFood(NutritionParams(
                nutritionType: 'logging',
                inGr: 'red%20apple',
              ));
      state.nutritionsPaginate..addAll([...?res.nutritions]);

      emit(state.copyWith());
    });
  }

  final FoodRemoteResource foodRemoteResource;
}
