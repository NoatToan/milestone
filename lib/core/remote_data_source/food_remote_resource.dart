import 'package:dio/dio.dart';
import 'package:milestone_project/core/app_food/models/food_bean.dart';
import 'package:milestone_project/core/app_food/models/nutrition.dart';
import 'package:milestone_project/core/models/requests/base_request_params.dart';
import 'package:milestone_project/core/remote_data_source/project_base_remote_resource.dart';

class FoodRemoteResource extends ProjectBaseRemoteResource {
  Future<FoodResponse> getFood(BaseParams params) async {
    final Response<dynamic> res = await this.dio.get(
          '${this.uriFood}/parser',
          queryParameters: params.toMap(),
        );

    return FoodResponse.fromMap(res.data);
  }
}

class FoodResponse {
  const FoodResponse({
    required this.nutritions,
  });

  final List<Nutrition>? nutritions;

  Map<String, dynamic> toMap() {
    return {
      'nutritions': this.nutritions,
    };
  }

  factory FoodResponse.fromMap(Map<String, dynamic> map) {
    return FoodResponse(
        nutritions: map['hints'] != null
            ? List<Nutrition>.from(
                map['hints']
                    .map(
                      (e) => Nutrition.fromJson(e),
                    )
                    .toList(),
              )
            : []);
  }
}
