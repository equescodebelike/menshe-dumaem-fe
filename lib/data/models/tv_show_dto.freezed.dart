// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tv_show_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TvShowDto _$TvShowDtoFromJson(Map<String, dynamic> json) {
  return _TvShowDto.fromJson(json);
}

/// @nodoc
mixin _$TvShowDto {
  DateTime? get startTime => throw _privateConstructorUsedError;
  DateTime? get finishTime => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get mainCategory => throw _privateConstructorUsedError;
  List<CategoryDto>? get categories => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TvShowDtoCopyWith<TvShowDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TvShowDtoCopyWith<$Res> {
  factory $TvShowDtoCopyWith(TvShowDto value, $Res Function(TvShowDto) then) =
      _$TvShowDtoCopyWithImpl<$Res, TvShowDto>;
  @useResult
  $Res call(
      {DateTime? startTime,
      DateTime? finishTime,
      String? name,
      String? mainCategory,
      List<CategoryDto>? categories});
}

/// @nodoc
class _$TvShowDtoCopyWithImpl<$Res, $Val extends TvShowDto>
    implements $TvShowDtoCopyWith<$Res> {
  _$TvShowDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTime = freezed,
    Object? finishTime = freezed,
    Object? name = freezed,
    Object? mainCategory = freezed,
    Object? categories = freezed,
  }) {
    return _then(_value.copyWith(
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      finishTime: freezed == finishTime
          ? _value.finishTime
          : finishTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      mainCategory: freezed == mainCategory
          ? _value.mainCategory
          : mainCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryDto>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TvShowDtoImplCopyWith<$Res>
    implements $TvShowDtoCopyWith<$Res> {
  factory _$$TvShowDtoImplCopyWith(
          _$TvShowDtoImpl value, $Res Function(_$TvShowDtoImpl) then) =
      __$$TvShowDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime? startTime,
      DateTime? finishTime,
      String? name,
      String? mainCategory,
      List<CategoryDto>? categories});
}

/// @nodoc
class __$$TvShowDtoImplCopyWithImpl<$Res>
    extends _$TvShowDtoCopyWithImpl<$Res, _$TvShowDtoImpl>
    implements _$$TvShowDtoImplCopyWith<$Res> {
  __$$TvShowDtoImplCopyWithImpl(
      _$TvShowDtoImpl _value, $Res Function(_$TvShowDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTime = freezed,
    Object? finishTime = freezed,
    Object? name = freezed,
    Object? mainCategory = freezed,
    Object? categories = freezed,
  }) {
    return _then(_$TvShowDtoImpl(
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      finishTime: freezed == finishTime
          ? _value.finishTime
          : finishTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      mainCategory: freezed == mainCategory
          ? _value.mainCategory
          : mainCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      categories: freezed == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryDto>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$TvShowDtoImpl implements _TvShowDto {
  const _$TvShowDtoImpl(
      {this.startTime,
      this.finishTime,
      this.name,
      this.mainCategory,
      final List<CategoryDto>? categories})
      : _categories = categories;

  factory _$TvShowDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TvShowDtoImplFromJson(json);

  @override
  final DateTime? startTime;
  @override
  final DateTime? finishTime;
  @override
  final String? name;
  @override
  final String? mainCategory;
  final List<CategoryDto>? _categories;
  @override
  List<CategoryDto>? get categories {
    final value = _categories;
    if (value == null) return null;
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TvShowDto(startTime: $startTime, finishTime: $finishTime, name: $name, mainCategory: $mainCategory, categories: $categories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TvShowDtoImpl &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.finishTime, finishTime) ||
                other.finishTime == finishTime) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.mainCategory, mainCategory) ||
                other.mainCategory == mainCategory) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, startTime, finishTime, name,
      mainCategory, const DeepCollectionEquality().hash(_categories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TvShowDtoImplCopyWith<_$TvShowDtoImpl> get copyWith =>
      __$$TvShowDtoImplCopyWithImpl<_$TvShowDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TvShowDtoImplToJson(
      this,
    );
  }
}

abstract class _TvShowDto implements TvShowDto {
  const factory _TvShowDto(
      {final DateTime? startTime,
      final DateTime? finishTime,
      final String? name,
      final String? mainCategory,
      final List<CategoryDto>? categories}) = _$TvShowDtoImpl;

  factory _TvShowDto.fromJson(Map<String, dynamic> json) =
      _$TvShowDtoImpl.fromJson;

  @override
  DateTime? get startTime;
  @override
  DateTime? get finishTime;
  @override
  String? get name;
  @override
  String? get mainCategory;
  @override
  List<CategoryDto>? get categories;
  @override
  @JsonKey(ignore: true)
  _$$TvShowDtoImplCopyWith<_$TvShowDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
