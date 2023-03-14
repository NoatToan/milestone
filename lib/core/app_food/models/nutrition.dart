// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:milestone_project/core/app_food/models/food_bean.dart';
import 'package:milestone_project/core/app_food/models/measure_bean.dart';

part 'nutrition.freezed.dart';
part 'nutrition.g.dart';

@freezed
class Nutrition with _$Nutrition {
  const factory Nutrition({
    @JsonKey(name: 'food') FoodBean? food,
    // @JsonKey(name: 'quantity') double? quantity,
    @JsonKey(name: 'measures') List<MeasureBean>? measure,
  }) = _Nutrition;

  factory Nutrition.fromJson(Map<String, Object?> json) => _$NutritionFromJson(json);
}
