// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'channel_package_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChannelPackageDto _$ChannelPackageDtoFromJson(Map<String, dynamic> json) {
  return _ChannelPackageDto.fromJson(json);
}

/// @nodoc
mixin _$ChannelPackageDto {
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChannelPackageDtoCopyWith<ChannelPackageDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelPackageDtoCopyWith<$Res> {
  factory $ChannelPackageDtoCopyWith(
          ChannelPackageDto value, $Res Function(ChannelPackageDto) then) =
      _$ChannelPackageDtoCopyWithImpl<$Res, ChannelPackageDto>;
  @useResult
  $Res call({String? name});
}

/// @nodoc
class _$ChannelPackageDtoCopyWithImpl<$Res, $Val extends ChannelPackageDto>
    implements $ChannelPackageDtoCopyWith<$Res> {
  _$ChannelPackageDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChannelPackageDtoImplCopyWith<$Res>
    implements $ChannelPackageDtoCopyWith<$Res> {
  factory _$$ChannelPackageDtoImplCopyWith(_$ChannelPackageDtoImpl value,
          $Res Function(_$ChannelPackageDtoImpl) then) =
      __$$ChannelPackageDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name});
}

/// @nodoc
class __$$ChannelPackageDtoImplCopyWithImpl<$Res>
    extends _$ChannelPackageDtoCopyWithImpl<$Res, _$ChannelPackageDtoImpl>
    implements _$$ChannelPackageDtoImplCopyWith<$Res> {
  __$$ChannelPackageDtoImplCopyWithImpl(_$ChannelPackageDtoImpl _value,
      $Res Function(_$ChannelPackageDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_$ChannelPackageDtoImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChannelPackageDtoImpl implements _ChannelPackageDto {
  const _$ChannelPackageDtoImpl({this.name});

  factory _$ChannelPackageDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChannelPackageDtoImplFromJson(json);

  @override
  final String? name;

  @override
  String toString() {
    return 'ChannelPackageDto(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChannelPackageDtoImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChannelPackageDtoImplCopyWith<_$ChannelPackageDtoImpl> get copyWith =>
      __$$ChannelPackageDtoImplCopyWithImpl<_$ChannelPackageDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChannelPackageDtoImplToJson(
      this,
    );
  }
}

abstract class _ChannelPackageDto implements ChannelPackageDto {
  const factory _ChannelPackageDto({final String? name}) =
      _$ChannelPackageDtoImpl;

  factory _ChannelPackageDto.fromJson(Map<String, dynamic> json) =
      _$ChannelPackageDtoImpl.fromJson;

  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$ChannelPackageDtoImplCopyWith<_$ChannelPackageDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
