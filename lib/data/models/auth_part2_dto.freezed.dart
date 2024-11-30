// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_part2_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AuthPart2Dto _$AuthPart2DtoFromJson(Map<String, dynamic> json) {
  return _AuthPart2Dto.fromJson(json);
}

/// @nodoc
mixin _$AuthPart2Dto {
  String? get email => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthPart2DtoCopyWith<AuthPart2Dto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthPart2DtoCopyWith<$Res> {
  factory $AuthPart2DtoCopyWith(
          AuthPart2Dto value, $Res Function(AuthPart2Dto) then) =
      _$AuthPart2DtoCopyWithImpl<$Res, AuthPart2Dto>;
  @useResult
  $Res call({String? email, String? code});
}

/// @nodoc
class _$AuthPart2DtoCopyWithImpl<$Res, $Val extends AuthPart2Dto>
    implements $AuthPart2DtoCopyWith<$Res> {
  _$AuthPart2DtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthPart2DtoImplCopyWith<$Res>
    implements $AuthPart2DtoCopyWith<$Res> {
  factory _$$AuthPart2DtoImplCopyWith(
          _$AuthPart2DtoImpl value, $Res Function(_$AuthPart2DtoImpl) then) =
      __$$AuthPart2DtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? email, String? code});
}

/// @nodoc
class __$$AuthPart2DtoImplCopyWithImpl<$Res>
    extends _$AuthPart2DtoCopyWithImpl<$Res, _$AuthPart2DtoImpl>
    implements _$$AuthPart2DtoImplCopyWith<$Res> {
  __$$AuthPart2DtoImplCopyWithImpl(
      _$AuthPart2DtoImpl _value, $Res Function(_$AuthPart2DtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? code = freezed,
  }) {
    return _then(_$AuthPart2DtoImpl(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$AuthPart2DtoImpl implements _AuthPart2Dto {
  const _$AuthPart2DtoImpl({this.email, this.code});

  factory _$AuthPart2DtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthPart2DtoImplFromJson(json);

  @override
  final String? email;
  @override
  final String? code;

  @override
  String toString() {
    return 'AuthPart2Dto(email: $email, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthPart2DtoImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthPart2DtoImplCopyWith<_$AuthPart2DtoImpl> get copyWith =>
      __$$AuthPart2DtoImplCopyWithImpl<_$AuthPart2DtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthPart2DtoImplToJson(
      this,
    );
  }
}

abstract class _AuthPart2Dto implements AuthPart2Dto {
  const factory _AuthPart2Dto({final String? email, final String? code}) =
      _$AuthPart2DtoImpl;

  factory _AuthPart2Dto.fromJson(Map<String, dynamic> json) =
      _$AuthPart2DtoImpl.fromJson;

  @override
  String? get email;
  @override
  String? get code;
  @override
  @JsonKey(ignore: true)
  _$$AuthPart2DtoImplCopyWith<_$AuthPart2DtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
