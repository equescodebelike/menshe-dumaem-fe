// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_part1_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AuthPart1Dto _$AuthPart1DtoFromJson(Map<String, dynamic> json) {
  return _AuthPart1Dto.fromJson(json);
}

/// @nodoc
mixin _$AuthPart1Dto {
  String? get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthPart1DtoCopyWith<AuthPart1Dto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthPart1DtoCopyWith<$Res> {
  factory $AuthPart1DtoCopyWith(
          AuthPart1Dto value, $Res Function(AuthPart1Dto) then) =
      _$AuthPart1DtoCopyWithImpl<$Res, AuthPart1Dto>;
  @useResult
  $Res call({String? email});
}

/// @nodoc
class _$AuthPart1DtoCopyWithImpl<$Res, $Val extends AuthPart1Dto>
    implements $AuthPart1DtoCopyWith<$Res> {
  _$AuthPart1DtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthPart1DtoImplCopyWith<$Res>
    implements $AuthPart1DtoCopyWith<$Res> {
  factory _$$AuthPart1DtoImplCopyWith(
          _$AuthPart1DtoImpl value, $Res Function(_$AuthPart1DtoImpl) then) =
      __$$AuthPart1DtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? email});
}

/// @nodoc
class __$$AuthPart1DtoImplCopyWithImpl<$Res>
    extends _$AuthPart1DtoCopyWithImpl<$Res, _$AuthPart1DtoImpl>
    implements _$$AuthPart1DtoImplCopyWith<$Res> {
  __$$AuthPart1DtoImplCopyWithImpl(
      _$AuthPart1DtoImpl _value, $Res Function(_$AuthPart1DtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_$AuthPart1DtoImpl(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$AuthPart1DtoImpl implements _AuthPart1Dto {
  const _$AuthPart1DtoImpl({this.email});

  factory _$AuthPart1DtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthPart1DtoImplFromJson(json);

  @override
  final String? email;

  @override
  String toString() {
    return 'AuthPart1Dto(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthPart1DtoImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthPart1DtoImplCopyWith<_$AuthPart1DtoImpl> get copyWith =>
      __$$AuthPart1DtoImplCopyWithImpl<_$AuthPart1DtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthPart1DtoImplToJson(
      this,
    );
  }
}

abstract class _AuthPart1Dto implements AuthPart1Dto {
  const factory _AuthPart1Dto({final String? email}) = _$AuthPart1DtoImpl;

  factory _AuthPart1Dto.fromJson(Map<String, dynamic> json) =
      _$AuthPart1DtoImpl.fromJson;

  @override
  String? get email;
  @override
  @JsonKey(ignore: true)
  _$$AuthPart1DtoImplCopyWith<_$AuthPart1DtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
