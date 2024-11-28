// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'channel_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChannelDto _$ChannelDtoFromJson(Map<String, dynamic> json) {
  return _ChannelDto.fromJson(json);
}

/// @nodoc
mixin _$ChannelDto {
  int? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChannelDtoCopyWith<ChannelDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelDtoCopyWith<$Res> {
  factory $ChannelDtoCopyWith(
          ChannelDto value, $Res Function(ChannelDto) then) =
      _$ChannelDtoCopyWithImpl<$Res, ChannelDto>;
  @useResult
  $Res call({int? id});
}

/// @nodoc
class _$ChannelDtoCopyWithImpl<$Res, $Val extends ChannelDto>
    implements $ChannelDtoCopyWith<$Res> {
  _$ChannelDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChannelDtoImplCopyWith<$Res>
    implements $ChannelDtoCopyWith<$Res> {
  factory _$$ChannelDtoImplCopyWith(
          _$ChannelDtoImpl value, $Res Function(_$ChannelDtoImpl) then) =
      __$$ChannelDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id});
}

/// @nodoc
class __$$ChannelDtoImplCopyWithImpl<$Res>
    extends _$ChannelDtoCopyWithImpl<$Res, _$ChannelDtoImpl>
    implements _$$ChannelDtoImplCopyWith<$Res> {
  __$$ChannelDtoImplCopyWithImpl(
      _$ChannelDtoImpl _value, $Res Function(_$ChannelDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$ChannelDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChannelDtoImpl implements _ChannelDto {
  const _$ChannelDtoImpl({this.id});

  factory _$ChannelDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChannelDtoImplFromJson(json);

  @override
  final int? id;

  @override
  String toString() {
    return 'ChannelDto(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChannelDtoImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChannelDtoImplCopyWith<_$ChannelDtoImpl> get copyWith =>
      __$$ChannelDtoImplCopyWithImpl<_$ChannelDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChannelDtoImplToJson(
      this,
    );
  }
}

abstract class _ChannelDto implements ChannelDto {
  const factory _ChannelDto({final int? id}) = _$ChannelDtoImpl;

  factory _ChannelDto.fromJson(Map<String, dynamic> json) =
      _$ChannelDtoImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(ignore: true)
  _$$ChannelDtoImplCopyWith<_$ChannelDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
