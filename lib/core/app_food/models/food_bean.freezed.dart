// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'food_bean.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FoodBean _$FoodBeanFromJson(Map<String, dynamic> json) {
  return _FoodBean.fromJson(json);
}

/// @nodoc
mixin _$FoodBean {
  @JsonKey(name: 'foodId')
  String? get foodId => throw _privateConstructorUsedError;
  @JsonKey(name: 'label')
  String? get label => throw _privateConstructorUsedError;
  @JsonKey(name: 'knownAs')
  String? get knownAs => throw _privateConstructorUsedError;
  @JsonKey(name: 'nutrients')
  NutrientsBean? get nutrients => throw _privateConstructorUsedError;
  @JsonKey(name: 'category')
  String? get category => throw _privateConstructorUsedError;
  @JsonKey(name: 'categoryLabel')
  String? get categoryLabel => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FoodBeanCopyWith<FoodBean> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodBeanCopyWith<$Res> {
  factory $FoodBeanCopyWith(FoodBean value, $Res Function(FoodBean) then) =
      _$FoodBeanCopyWithImpl<$Res, FoodBean>;
  @useResult
  $Res call(
      {@JsonKey(name: 'foodId') String? foodId,
      @JsonKey(name: 'label') String? label,
      @JsonKey(name: 'knownAs') String? knownAs,
      @JsonKey(name: 'nutrients') NutrientsBean? nutrients,
      @JsonKey(name: 'category') String? category,
      @JsonKey(name: 'categoryLabel') String? categoryLabel,
      @JsonKey(name: 'image') String? image});

  $NutrientsBeanCopyWith<$Res>? get nutrients;
}

/// @nodoc
class _$FoodBeanCopyWithImpl<$Res, $Val extends FoodBean>
    implements $FoodBeanCopyWith<$Res> {
  _$FoodBeanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? foodId = freezed,
    Object? label = freezed,
    Object? knownAs = freezed,
    Object? nutrients = freezed,
    Object? category = freezed,
    Object? categoryLabel = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      foodId: freezed == foodId
          ? _value.foodId
          : foodId // ignore: cast_nullable_to_non_nullable
              as String?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      knownAs: freezed == knownAs
          ? _value.knownAs
          : knownAs // ignore: cast_nullable_to_non_nullable
              as String?,
      nutrients: freezed == nutrients
          ? _value.nutrients
          : nutrients // ignore: cast_nullable_to_non_nullable
              as NutrientsBean?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryLabel: freezed == categoryLabel
          ? _value.categoryLabel
          : categoryLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NutrientsBeanCopyWith<$Res>? get nutrients {
    if (_value.nutrients == null) {
      return null;
    }

    return $NutrientsBeanCopyWith<$Res>(_value.nutrients!, (value) {
      return _then(_value.copyWith(nutrients: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_FoodBeanCopyWith<$Res> implements $FoodBeanCopyWith<$Res> {
  factory _$$_FoodBeanCopyWith(
          _$_FoodBean value, $Res Function(_$_FoodBean) then) =
      __$$_FoodBeanCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'foodId') String? foodId,
      @JsonKey(name: 'label') String? label,
      @JsonKey(name: 'knownAs') String? knownAs,
      @JsonKey(name: 'nutrients') NutrientsBean? nutrients,
      @JsonKey(name: 'category') String? category,
      @JsonKey(name: 'categoryLabel') String? categoryLabel,
      @JsonKey(name: 'image') String? image});

  @override
  $NutrientsBeanCopyWith<$Res>? get nutrients;
}

/// @nodoc
class __$$_FoodBeanCopyWithImpl<$Res>
    extends _$FoodBeanCopyWithImpl<$Res, _$_FoodBean>
    implements _$$_FoodBeanCopyWith<$Res> {
  __$$_FoodBeanCopyWithImpl(
      _$_FoodBean _value, $Res Function(_$_FoodBean) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? foodId = freezed,
    Object? label = freezed,
    Object? knownAs = freezed,
    Object? nutrients = freezed,
    Object? category = freezed,
    Object? categoryLabel = freezed,
    Object? image = freezed,
  }) {
    return _then(_$_FoodBean(
      foodId: freezed == foodId
          ? _value.foodId
          : foodId // ignore: cast_nullable_to_non_nullable
              as String?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      knownAs: freezed == knownAs
          ? _value.knownAs
          : knownAs // ignore: cast_nullable_to_non_nullable
              as String?,
      nutrients: freezed == nutrients
          ? _value.nutrients
          : nutrients // ignore: cast_nullable_to_non_nullable
              as NutrientsBean?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryLabel: freezed == categoryLabel
          ? _value.categoryLabel
          : categoryLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FoodBean implements _FoodBean {
  const _$_FoodBean(
      {@JsonKey(name: 'foodId') this.foodId,
      @JsonKey(name: 'label') this.label,
      @JsonKey(name: 'knownAs') this.knownAs,
      @JsonKey(name: 'nutrients') this.nutrients,
      @JsonKey(name: 'category') this.category,
      @JsonKey(name: 'categoryLabel') this.categoryLabel,
      @JsonKey(name: 'image') this.image});

  factory _$_FoodBean.fromJson(Map<String, dynamic> json) =>
      _$$_FoodBeanFromJson(json);

  @override
  @JsonKey(name: 'foodId')
  final String? foodId;
  @override
  @JsonKey(name: 'label')
  final String? label;
  @override
  @JsonKey(name: 'knownAs')
  final String? knownAs;
  @override
  @JsonKey(name: 'nutrients')
  final NutrientsBean? nutrients;
  @override
  @JsonKey(name: 'category')
  final String? category;
  @override
  @JsonKey(name: 'categoryLabel')
  final String? categoryLabel;
  @override
  @JsonKey(name: 'image')
  final String? image;

  @override
  String toString() {
    return 'FoodBean(foodId: $foodId, label: $label, knownAs: $knownAs, nutrients: $nutrients, category: $category, categoryLabel: $categoryLabel, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FoodBean &&
            (identical(other.foodId, foodId) || other.foodId == foodId) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.knownAs, knownAs) || other.knownAs == knownAs) &&
            (identical(other.nutrients, nutrients) ||
                other.nutrients == nutrients) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.categoryLabel, categoryLabel) ||
                other.categoryLabel == categoryLabel) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, foodId, label, knownAs,
      nutrients, category, categoryLabel, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FoodBeanCopyWith<_$_FoodBean> get copyWith =>
      __$$_FoodBeanCopyWithImpl<_$_FoodBean>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FoodBeanToJson(
      this,
    );
  }
}

abstract class _FoodBean implements FoodBean {
  const factory _FoodBean(
      {@JsonKey(name: 'foodId') final String? foodId,
      @JsonKey(name: 'label') final String? label,
      @JsonKey(name: 'knownAs') final String? knownAs,
      @JsonKey(name: 'nutrients') final NutrientsBean? nutrients,
      @JsonKey(name: 'category') final String? category,
      @JsonKey(name: 'categoryLabel') final String? categoryLabel,
      @JsonKey(name: 'image') final String? image}) = _$_FoodBean;

  factory _FoodBean.fromJson(Map<String, dynamic> json) = _$_FoodBean.fromJson;

  @override
  @JsonKey(name: 'foodId')
  String? get foodId;
  @override
  @JsonKey(name: 'label')
  String? get label;
  @override
  @JsonKey(name: 'knownAs')
  String? get knownAs;
  @override
  @JsonKey(name: 'nutrients')
  NutrientsBean? get nutrients;
  @override
  @JsonKey(name: 'category')
  String? get category;
  @override
  @JsonKey(name: 'categoryLabel')
  String? get categoryLabel;
  @override
  @JsonKey(name: 'image')
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$_FoodBeanCopyWith<_$_FoodBean> get copyWith =>
      throw _privateConstructorUsedError;
}
