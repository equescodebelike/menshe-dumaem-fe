// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tv_shows_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TvShowsDto _$TvShowsDtoFromJson(Map<String, dynamic> json) {
  return _TvShowsDto.fromJson(json);
}

/// @nodoc
mixin _$TvShowsDto {
  List<TvShowDto>? get tvShows => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TvShowsDtoCopyWith<TvShowsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TvShowsDtoCopyWith<$Res> {
  factory $TvShowsDtoCopyWith(
          TvShowsDto value, $Res Function(TvShowsDto) then) =
      _$TvShowsDtoCopyWithImpl<$Res, TvShowsDto>;
  @useResult
  $Res call({List<TvShowDto>? tvShows});
}

/// @nodoc
class _$TvShowsDtoCopyWithImpl<$Res, $Val extends TvShowsDto>
    implements $TvShowsDtoCopyWith<$Res> {
  _$TvShowsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tvShows = freezed,
  }) {
    return _then(_value.copyWith(
      tvShows: freezed == tvShows
          ? _value.tvShows
          : tvShows // ignore: cast_nullable_to_non_nullable
              as List<TvShowDto>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TvShowsDtoImplCopyWith<$Res>
    implements $TvShowsDtoCopyWith<$Res> {
  factory _$$TvShowsDtoImplCopyWith(
          _$TvShowsDtoImpl value, $Res Function(_$TvShowsDtoImpl) then) =
      __$$TvShowsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TvShowDto>? tvShows});
}

/// @nodoc
class __$$TvShowsDtoImplCopyWithImpl<$Res>
    extends _$TvShowsDtoCopyWithImpl<$Res, _$TvShowsDtoImpl>
    implements _$$TvShowsDtoImplCopyWith<$Res> {
  __$$TvShowsDtoImplCopyWithImpl(
      _$TvShowsDtoImpl _value, $Res Function(_$TvShowsDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tvShows = freezed,
  }) {
    return _then(_$TvShowsDtoImpl(
      tvShows: freezed == tvShows
          ? _value._tvShows
          : tvShows // ignore: cast_nullable_to_non_nullable
              as List<TvShowDto>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$TvShowsDtoImpl implements _TvShowsDto {
  const _$TvShowsDtoImpl({final List<TvShowDto>? tvShows}) : _tvShows = tvShows;

  factory _$TvShowsDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TvShowsDtoImplFromJson(json);

  final List<TvShowDto>? _tvShows;
  @override
  List<TvShowDto>? get tvShows {
    final value = _tvShows;
    if (value == null) return null;
    if (_tvShows is EqualUnmodifiableListView) return _tvShows;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TvShowsDto(tvShows: $tvShows)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TvShowsDtoImpl &&
            const DeepCollectionEquality().equals(other._tvShows, _tvShows));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tvShows));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TvShowsDtoImplCopyWith<_$TvShowsDtoImpl> get copyWith =>
      __$$TvShowsDtoImplCopyWithImpl<_$TvShowsDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TvShowsDtoImplToJson(
      this,
    );
  }
}

abstract class _TvShowsDto implements TvShowsDto {
  const factory _TvShowsDto({final List<TvShowDto>? tvShows}) =
      _$TvShowsDtoImpl;

  factory _TvShowsDto.fromJson(Map<String, dynamic> json) =
      _$TvShowsDtoImpl.fromJson;

  @override
  List<TvShowDto>? get tvShows;
  @override
  @JsonKey(ignore: true)
  _$$TvShowsDtoImplCopyWith<_$TvShowsDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
