// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'measure_bean.freezed.dart';
part 'measure_bean.g.dart';

@freezed
class MeasureBean with _$MeasureBean {
  const factory MeasureBean({
    @JsonKey(name: 'uri') String? uri,
    @JsonKey(name: 'label') String? label,
  }) = _MeasureBean;

  factory MeasureBean.fromJson(Map<String, Object?> json) => _$MeasureBeanFromJson(json);
}
