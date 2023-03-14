// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'measure_bean.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MeasureBean _$MeasureBeanFromJson(Map<String, dynamic> json) {
  return _MeasureBean.fromJson(json);
}

/// @nodoc
mixin _$MeasureBean {
  @JsonKey(name: 'uri')
  String? get uri => throw _privateConstructorUsedError;
  @JsonKey(name: 'label')
  String? get label => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MeasureBeanCopyWith<MeasureBean> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeasureBeanCopyWith<$Res> {
  factory $MeasureBeanCopyWith(
          MeasureBean value, $Res Function(MeasureBean) then) =
      _$MeasureBeanCopyWithImpl<$Res, MeasureBean>;
  @useResult
  $Res call(
      {@JsonKey(name: 'uri') String? uri,
      @JsonKey(name: 'label') String? label});
}

/// @nodoc
class _$MeasureBeanCopyWithImpl<$Res, $Val extends MeasureBean>
    implements $MeasureBeanCopyWith<$Res> {
  _$MeasureBeanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = freezed,
    Object? label = freezed,
  }) {
    return _then(_value.copyWith(
      uri: freezed == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MeasureBeanCopyWith<$Res>
    implements $MeasureBeanCopyWith<$Res> {
  factory _$$_MeasureBeanCopyWith(
          _$_MeasureBean value, $Res Function(_$_MeasureBean) then) =
      __$$_MeasureBeanCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'uri') String? uri,
      @JsonKey(name: 'label') String? label});
}

/// @nodoc
class __$$_MeasureBeanCopyWithImpl<$Res>
    extends _$MeasureBeanCopyWithImpl<$Res, _$_MeasureBean>
    implements _$$_MeasureBeanCopyWith<$Res> {
  __$$_MeasureBeanCopyWithImpl(
      _$_MeasureBean _value, $Res Function(_$_MeasureBean) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = freezed,
    Object? label = freezed,
  }) {
    return _then(_$_MeasureBean(
      uri: freezed == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MeasureBean implements _MeasureBean {
  const _$_MeasureBean(
      {@JsonKey(name: 'uri') this.uri, @JsonKey(name: 'label') this.label});

  factory _$_MeasureBean.fromJson(Map<String, dynamic> json) =>
      _$$_MeasureBeanFromJson(json);

  @override
  @JsonKey(name: 'uri')
  final String? uri;
  @override
  @JsonKey(name: 'label')
  final String? label;

  @override
  String toString() {
    return 'MeasureBean(uri: $uri, label: $label)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MeasureBean &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.label, label) || other.label == label));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uri, label);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MeasureBeanCopyWith<_$_MeasureBean> get copyWith =>
      __$$_MeasureBeanCopyWithImpl<_$_MeasureBean>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MeasureBeanToJson(
      this,
    );
  }
}

abstract class _MeasureBean implements MeasureBean {
  const factory _MeasureBean(
      {@JsonKey(name: 'uri') final String? uri,
      @JsonKey(name: 'label') final String? label}) = _$_MeasureBean;

  factory _MeasureBean.fromJson(Map<String, dynamic> json) =
      _$_MeasureBean.fromJson;

  @override
  @JsonKey(name: 'uri')
  String? get uri;
  @override
  @JsonKey(name: 'label')
  String? get label;
  @override
  @JsonKey(ignore: true)
  _$$_MeasureBeanCopyWith<_$_MeasureBean> get copyWith =>
      throw _privateConstructorUsedError;
}
