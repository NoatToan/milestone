// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nutrition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Nutrition _$$_NutritionFromJson(Map<String, dynamic> json) => _$_Nutrition(
      food: json['food'] == null
          ? null
          : FoodBean.fromJson(json['food'] as Map<String, dynamic>),
      measure: (json['measures'] as List<dynamic>?)
          ?.map((e) => MeasureBean.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_NutritionToJson(_$_Nutrition instance) =>
    <String, dynamic>{
      'food': instance.food,
      'measures': instance.measure,
    };
