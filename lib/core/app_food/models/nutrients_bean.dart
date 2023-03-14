// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'nutrients_bean.freezed.dart';
part 'nutrients_bean.g.dart';

@freezed
class NutrientsBean with _$NutrientsBean {
  const factory NutrientsBean({
    @JsonKey(name: 'ENERC_KCAL') double? ENERCKCAL,
    @JsonKey(name: 'PROCNT') double? PROCNT,
    @JsonKey(name: 'FAT') double? FAT,
    @JsonKey(name: 'CHOCDF') double? CHOCDF,
    @JsonKey(name: 'FIBTG') double? FIBTG,
  }) = _NutrientsBean;

  factory NutrientsBean.fromJson(Map<String, Object?> json) => _$NutrientsBeanFromJson(json);
}

