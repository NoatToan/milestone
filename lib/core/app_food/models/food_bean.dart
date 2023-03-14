// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:milestone_project/core/app_food/models/nutrients_bean.dart';

part 'food_bean.freezed.dart';
part 'food_bean.g.dart';

@freezed
class FoodBean with _$FoodBean {
  const factory FoodBean({
    @JsonKey(name: 'foodId') String? foodId,
    @JsonKey(name: 'label') String? label,
    @JsonKey(name: 'knownAs') String? knownAs,
    @JsonKey(name: 'nutrients') NutrientsBean? nutrients,
    @JsonKey(name: 'category') String? category,
    @JsonKey(name: 'categoryLabel') String? categoryLabel,
    @JsonKey(name: 'image') String? image,
  }) = _FoodBean;

  factory FoodBean.fromJson(Map<String, Object?> json) => _$FoodBeanFromJson(json);
}

