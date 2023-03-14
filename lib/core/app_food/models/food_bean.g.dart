// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_bean.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FoodBean _$$_FoodBeanFromJson(Map<String, dynamic> json) => _$_FoodBean(
      foodId: json['foodId'] as String?,
      label: json['label'] as String?,
      knownAs: json['knownAs'] as String?,
      nutrients: json['nutrients'] == null
          ? null
          : NutrientsBean.fromJson(json['nutrients'] as Map<String, dynamic>),
      category: json['category'] as String?,
      categoryLabel: json['categoryLabel'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$_FoodBeanToJson(_$_FoodBean instance) =>
    <String, dynamic>{
      'foodId': instance.foodId,
      'label': instance.label,
      'knownAs': instance.knownAs,
      'nutrients': instance.nutrients,
      'category': instance.category,
      'categoryLabel': instance.categoryLabel,
      'image': instance.image,
    };
