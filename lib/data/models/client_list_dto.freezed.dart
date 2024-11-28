// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'client_list_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ClientListDto _$ClientListDtoFromJson(Map<String, dynamic> json) {
  return _ClientListDto.fromJson(json);
}

/// @nodoc
mixin _$ClientListDto {
  List<ClientDto>? get list => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientListDtoCopyWith<ClientListDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientListDtoCopyWith<$Res> {
  factory $ClientListDtoCopyWith(
          ClientListDto value, $Res Function(ClientListDto) then) =
      _$ClientListDtoCopyWithImpl<$Res, ClientListDto>;
  @useResult
  $Res call({List<ClientDto>? list});
}

/// @nodoc
class _$ClientListDtoCopyWithImpl<$Res, $Val extends ClientListDto>
    implements $ClientListDtoCopyWith<$Res> {
  _$ClientListDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = freezed,
  }) {
    return _then(_value.copyWith(
      list: freezed == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<ClientDto>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClientListDtoImplCopyWith<$Res>
    implements $ClientListDtoCopyWith<$Res> {
  factory _$$ClientListDtoImplCopyWith(
          _$ClientListDtoImpl value, $Res Function(_$ClientListDtoImpl) then) =
      __$$ClientListDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ClientDto>? list});
}

/// @nodoc
class __$$ClientListDtoImplCopyWithImpl<$Res>
    extends _$ClientListDtoCopyWithImpl<$Res, _$ClientListDtoImpl>
    implements _$$ClientListDtoImplCopyWith<$Res> {
  __$$ClientListDtoImplCopyWithImpl(
      _$ClientListDtoImpl _value, $Res Function(_$ClientListDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = freezed,
  }) {
    return _then(_$ClientListDtoImpl(
      list: freezed == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<ClientDto>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientListDtoImpl implements _ClientListDto {
  const _$ClientListDtoImpl({final List<ClientDto>? list}) : _list = list;

  factory _$ClientListDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClientListDtoImplFromJson(json);

  final List<ClientDto>? _list;
  @override
  List<ClientDto>? get list {
    final value = _list;
    if (value == null) return null;
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ClientListDto(list: $list)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientListDtoImpl &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientListDtoImplCopyWith<_$ClientListDtoImpl> get copyWith =>
      __$$ClientListDtoImplCopyWithImpl<_$ClientListDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientListDtoImplToJson(
      this,
    );
  }
}

abstract class _ClientListDto implements ClientListDto {
  const factory _ClientListDto({final List<ClientDto>? list}) =
      _$ClientListDtoImpl;

  factory _ClientListDto.fromJson(Map<String, dynamic> json) =
      _$ClientListDtoImpl.fromJson;

  @override
  List<ClientDto>? get list;
  @override
  @JsonKey(ignore: true)
  _$$ClientListDtoImplCopyWith<_$ClientListDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
