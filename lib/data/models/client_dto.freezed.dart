// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'client_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ClientDto _$ClientDtoFromJson(Map<String, dynamic> json) {
  return _ClientDto.fromJson(json);
}

/// @nodoc
mixin _$ClientDto {
  int? get id => throw _privateConstructorUsedError;
  bool? get gender => throw _privateConstructorUsedError;
  String? get externalId => throw _privateConstructorUsedError;
  int? get ageMin => throw _privateConstructorUsedError;
  int? get ageMax => throw _privateConstructorUsedError;
  AddressDto? get address => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientDtoCopyWith<ClientDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientDtoCopyWith<$Res> {
  factory $ClientDtoCopyWith(ClientDto value, $Res Function(ClientDto) then) =
      _$ClientDtoCopyWithImpl<$Res, ClientDto>;
  @useResult
  $Res call(
      {int? id,
      bool? gender,
      String? externalId,
      int? ageMin,
      int? ageMax,
      AddressDto? address});

  $AddressDtoCopyWith<$Res>? get address;
}

/// @nodoc
class _$ClientDtoCopyWithImpl<$Res, $Val extends ClientDto>
    implements $ClientDtoCopyWith<$Res> {
  _$ClientDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? gender = freezed,
    Object? externalId = freezed,
    Object? ageMin = freezed,
    Object? ageMax = freezed,
    Object? address = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as bool?,
      externalId: freezed == externalId
          ? _value.externalId
          : externalId // ignore: cast_nullable_to_non_nullable
              as String?,
      ageMin: freezed == ageMin
          ? _value.ageMin
          : ageMin // ignore: cast_nullable_to_non_nullable
              as int?,
      ageMax: freezed == ageMax
          ? _value.ageMax
          : ageMax // ignore: cast_nullable_to_non_nullable
              as int?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressDto?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressDtoCopyWith<$Res>? get address {
    if (_value.address == null) {
      return null;
    }

    return $AddressDtoCopyWith<$Res>(_value.address!, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ClientDtoImplCopyWith<$Res>
    implements $ClientDtoCopyWith<$Res> {
  factory _$$ClientDtoImplCopyWith(
          _$ClientDtoImpl value, $Res Function(_$ClientDtoImpl) then) =
      __$$ClientDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      bool? gender,
      String? externalId,
      int? ageMin,
      int? ageMax,
      AddressDto? address});

  @override
  $AddressDtoCopyWith<$Res>? get address;
}

/// @nodoc
class __$$ClientDtoImplCopyWithImpl<$Res>
    extends _$ClientDtoCopyWithImpl<$Res, _$ClientDtoImpl>
    implements _$$ClientDtoImplCopyWith<$Res> {
  __$$ClientDtoImplCopyWithImpl(
      _$ClientDtoImpl _value, $Res Function(_$ClientDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? gender = freezed,
    Object? externalId = freezed,
    Object? ageMin = freezed,
    Object? ageMax = freezed,
    Object? address = freezed,
  }) {
    return _then(_$ClientDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as bool?,
      externalId: freezed == externalId
          ? _value.externalId
          : externalId // ignore: cast_nullable_to_non_nullable
              as String?,
      ageMin: freezed == ageMin
          ? _value.ageMin
          : ageMin // ignore: cast_nullable_to_non_nullable
              as int?,
      ageMax: freezed == ageMax
          ? _value.ageMax
          : ageMax // ignore: cast_nullable_to_non_nullable
              as int?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressDto?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$ClientDtoImpl implements _ClientDto {
  const _$ClientDtoImpl(
      {this.id,
      this.gender,
      this.externalId,
      this.ageMin,
      this.ageMax,
      this.address});

  factory _$ClientDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClientDtoImplFromJson(json);

  @override
  final int? id;
  @override
  final bool? gender;
  @override
  final String? externalId;
  @override
  final int? ageMin;
  @override
  final int? ageMax;
  @override
  final AddressDto? address;

  @override
  String toString() {
    return 'ClientDto(id: $id, gender: $gender, externalId: $externalId, ageMin: $ageMin, ageMax: $ageMax, address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.externalId, externalId) ||
                other.externalId == externalId) &&
            (identical(other.ageMin, ageMin) || other.ageMin == ageMin) &&
            (identical(other.ageMax, ageMax) || other.ageMax == ageMax) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, gender, externalId, ageMin, ageMax, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientDtoImplCopyWith<_$ClientDtoImpl> get copyWith =>
      __$$ClientDtoImplCopyWithImpl<_$ClientDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientDtoImplToJson(
      this,
    );
  }
}

abstract class _ClientDto implements ClientDto {
  const factory _ClientDto(
      {final int? id,
      final bool? gender,
      final String? externalId,
      final int? ageMin,
      final int? ageMax,
      final AddressDto? address}) = _$ClientDtoImpl;

  factory _ClientDto.fromJson(Map<String, dynamic> json) =
      _$ClientDtoImpl.fromJson;

  @override
  int? get id;
  @override
  bool? get gender;
  @override
  String? get externalId;
  @override
  int? get ageMin;
  @override
  int? get ageMax;
  @override
  AddressDto? get address;
  @override
  @JsonKey(ignore: true)
  _$$ClientDtoImplCopyWith<_$ClientDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
