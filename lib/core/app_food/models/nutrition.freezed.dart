// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nutrition.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Nutrition _$NutritionFromJson(Map<String, dynamic> json) {
  return _Nutrition.fromJson(json);
}

/// @nodoc
mixin _$Nutrition {
  @JsonKey(name: 'food')
  FoodBean? get food =>
      throw _privateConstructorUsedError; // @JsonKey(name: 'quantity') double? quantity,
  @JsonKey(name: 'measures')
  List<MeasureBean>? get measure => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NutritionCopyWith<Nutrition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NutritionCopyWith<$Res> {
  factory $NutritionCopyWith(Nutrition value, $Res Function(Nutrition) then) =
      _$NutritionCopyWithImpl<$Res, Nutrition>;
  @useResult
  $Res call(
      {@JsonKey(name: 'food') FoodBean? food,
      @JsonKey(name: 'measures') List<MeasureBean>? measure});

  $FoodBeanCopyWith<$Res>? get food;
}

/// @nodoc
class _$NutritionCopyWithImpl<$Res, $Val extends Nutrition>
    implements $NutritionCopyWith<$Res> {
  _$NutritionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? food = freezed,
    Object? measure = freezed,
  }) {
    return _then(_value.copyWith(
      food: freezed == food
          ? _value.food
          : food // ignore: cast_nullable_to_non_nullable
              as FoodBean?,
      measure: freezed == measure
          ? _value.measure
          : measure // ignore: cast_nullable_to_non_nullable
              as List<MeasureBean>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FoodBeanCopyWith<$Res>? get food {
    if (_value.food == null) {
      return null;
    }

    return $FoodBeanCopyWith<$Res>(_value.food!, (value) {
      return _then(_value.copyWith(food: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_NutritionCopyWith<$Res> implements $NutritionCopyWith<$Res> {
  factory _$$_NutritionCopyWith(
          _$_Nutrition value, $Res Function(_$_Nutrition) then) =
      __$$_NutritionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'food') FoodBean? food,
      @JsonKey(name: 'measures') List<MeasureBean>? measure});

  @override
  $FoodBeanCopyWith<$Res>? get food;
}

/// @nodoc
class __$$_NutritionCopyWithImpl<$Res>
    extends _$NutritionCopyWithImpl<$Res, _$_Nutrition>
    implements _$$_NutritionCopyWith<$Res> {
  __$$_NutritionCopyWithImpl(
      _$_Nutrition _value, $Res Function(_$_Nutrition) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? food = freezed,
    Object? measure = freezed,
  }) {
    return _then(_$_Nutrition(
      food: freezed == food
          ? _value.food
          : food // ignore: cast_nullable_to_non_nullable
              as FoodBean?,
      measure: freezed == measure
          ? _value._measure
          : measure // ignore: cast_nullable_to_non_nullable
              as List<MeasureBean>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Nutrition implements _Nutrition {
  const _$_Nutrition(
      {@JsonKey(name: 'food') this.food,
      @JsonKey(name: 'measures') final List<MeasureBean>? measure})
      : _measure = measure;

  factory _$_Nutrition.fromJson(Map<String, dynamic> json) =>
      _$$_NutritionFromJson(json);

  @override
  @JsonKey(name: 'food')
  final FoodBean? food;
// @JsonKey(name: 'quantity') double? quantity,
  final List<MeasureBean>? _measure;
// @JsonKey(name: 'quantity') double? quantity,
  @override
  @JsonKey(name: 'measures')
  List<MeasureBean>? get measure {
    final value = _measure;
    if (value == null) return null;
    if (_measure is EqualUnmodifiableListView) return _measure;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Nutrition(food: $food, measure: $measure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Nutrition &&
            (identical(other.food, food) || other.food == food) &&
            const DeepCollectionEquality().equals(other._measure, _measure));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, food, const DeepCollectionEquality().hash(_measure));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NutritionCopyWith<_$_Nutrition> get copyWith =>
      __$$_NutritionCopyWithImpl<_$_Nutrition>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NutritionToJson(
      this,
    );
  }
}

abstract class _Nutrition implements Nutrition {
  const factory _Nutrition(
          {@JsonKey(name: 'food') final FoodBean? food,
          @JsonKey(name: 'measures') final List<MeasureBean>? measure}) =
      _$_Nutrition;

  factory _Nutrition.fromJson(Map<String, dynamic> json) =
      _$_Nutrition.fromJson;

  @override
  @JsonKey(name: 'food')
  FoodBean? get food;
  @override // @JsonKey(name: 'quantity') double? quantity,
  @JsonKey(name: 'measures')
  List<MeasureBean>? get measure;
  @override
  @JsonKey(ignore: true)
  _$$_NutritionCopyWith<_$_Nutrition> get copyWith =>
      throw _privateConstructorUsedError;
}
