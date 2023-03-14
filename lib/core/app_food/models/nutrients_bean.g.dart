// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nutrients_bean.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NutrientsBean _$$_NutrientsBeanFromJson(Map<String, dynamic> json) =>
    _$_NutrientsBean(
      ENERCKCAL: (json['ENERC_KCAL'] as num?)?.toDouble(),
      PROCNT: (json['PROCNT'] as num?)?.toDouble(),
      FAT: (json['FAT'] as num?)?.toDouble(),
      CHOCDF: (json['CHOCDF'] as num?)?.toDouble(),
      FIBTG: (json['FIBTG'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_NutrientsBeanToJson(_$_NutrientsBean instance) =>
    <String, dynamic>{
      'ENERC_KCAL': instance.ENERCKCAL,
      'PROCNT': instance.PROCNT,
      'FAT': instance.FAT,
      'CHOCDF': instance.CHOCDF,
      'FIBTG': instance.FIBTG,
    };
