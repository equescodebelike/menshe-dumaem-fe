// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'viewing_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ViewingDto _$ViewingDtoFromJson(Map<String, dynamic> json) {
  return _ViewingDto.fromJson(json);
}

/// @nodoc
mixin _$ViewingDto {
  DateTime? get startTime => throw _privateConstructorUsedError;
  DateTime? get finishTime => throw _privateConstructorUsedError;
  String? get device => throw _privateConstructorUsedError;
  TvShowDto? get tvShow => throw _privateConstructorUsedError;
  ClientDto? get client => throw _privateConstructorUsedError;
  ChannelDto? get channel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ViewingDtoCopyWith<ViewingDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewingDtoCopyWith<$Res> {
  factory $ViewingDtoCopyWith(
          ViewingDto value, $Res Function(ViewingDto) then) =
      _$ViewingDtoCopyWithImpl<$Res, ViewingDto>;
  @useResult
  $Res call(
      {DateTime? startTime,
      DateTime? finishTime,
      String? device,
      TvShowDto? tvShow,
      ClientDto? client,
      ChannelDto? channel});

  $TvShowDtoCopyWith<$Res>? get tvShow;
  $ClientDtoCopyWith<$Res>? get client;
  $ChannelDtoCopyWith<$Res>? get channel;
}

/// @nodoc
class _$ViewingDtoCopyWithImpl<$Res, $Val extends ViewingDto>
    implements $ViewingDtoCopyWith<$Res> {
  _$ViewingDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTime = freezed,
    Object? finishTime = freezed,
    Object? device = freezed,
    Object? tvShow = freezed,
    Object? client = freezed,
    Object? channel = freezed,
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
      device: freezed == device
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as String?,
      tvShow: freezed == tvShow
          ? _value.tvShow
          : tvShow // ignore: cast_nullable_to_non_nullable
              as TvShowDto?,
      client: freezed == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as ClientDto?,
      channel: freezed == channel
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as ChannelDto?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TvShowDtoCopyWith<$Res>? get tvShow {
    if (_value.tvShow == null) {
      return null;
    }

    return $TvShowDtoCopyWith<$Res>(_value.tvShow!, (value) {
      return _then(_value.copyWith(tvShow: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ClientDtoCopyWith<$Res>? get client {
    if (_value.client == null) {
      return null;
    }

    return $ClientDtoCopyWith<$Res>(_value.client!, (value) {
      return _then(_value.copyWith(client: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ChannelDtoCopyWith<$Res>? get channel {
    if (_value.channel == null) {
      return null;
    }

    return $ChannelDtoCopyWith<$Res>(_value.channel!, (value) {
      return _then(_value.copyWith(channel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ViewingDtoImplCopyWith<$Res>
    implements $ViewingDtoCopyWith<$Res> {
  factory _$$ViewingDtoImplCopyWith(
          _$ViewingDtoImpl value, $Res Function(_$ViewingDtoImpl) then) =
      __$$ViewingDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime? startTime,
      DateTime? finishTime,
      String? device,
      TvShowDto? tvShow,
      ClientDto? client,
      ChannelDto? channel});

  @override
  $TvShowDtoCopyWith<$Res>? get tvShow;
  @override
  $ClientDtoCopyWith<$Res>? get client;
  @override
  $ChannelDtoCopyWith<$Res>? get channel;
}

/// @nodoc
class __$$ViewingDtoImplCopyWithImpl<$Res>
    extends _$ViewingDtoCopyWithImpl<$Res, _$ViewingDtoImpl>
    implements _$$ViewingDtoImplCopyWith<$Res> {
  __$$ViewingDtoImplCopyWithImpl(
      _$ViewingDtoImpl _value, $Res Function(_$ViewingDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTime = freezed,
    Object? finishTime = freezed,
    Object? device = freezed,
    Object? tvShow = freezed,
    Object? client = freezed,
    Object? channel = freezed,
  }) {
    return _then(_$ViewingDtoImpl(
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      finishTime: freezed == finishTime
          ? _value.finishTime
          : finishTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      device: freezed == device
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as String?,
      tvShow: freezed == tvShow
          ? _value.tvShow
          : tvShow // ignore: cast_nullable_to_non_nullable
              as TvShowDto?,
      client: freezed == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as ClientDto?,
      channel: freezed == channel
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as ChannelDto?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$ViewingDtoImpl implements _ViewingDto {
  const _$ViewingDtoImpl(
      {this.startTime,
      this.finishTime,
      this.device,
      this.tvShow,
      this.client,
      this.channel});

  factory _$ViewingDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ViewingDtoImplFromJson(json);

  @override
  final DateTime? startTime;
  @override
  final DateTime? finishTime;
  @override
  final String? device;
  @override
  final TvShowDto? tvShow;
  @override
  final ClientDto? client;
  @override
  final ChannelDto? channel;

  @override
  String toString() {
    return 'ViewingDto(startTime: $startTime, finishTime: $finishTime, device: $device, tvShow: $tvShow, client: $client, channel: $channel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ViewingDtoImpl &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.finishTime, finishTime) ||
                other.finishTime == finishTime) &&
            (identical(other.device, device) || other.device == device) &&
            (identical(other.tvShow, tvShow) || other.tvShow == tvShow) &&
            (identical(other.client, client) || other.client == client) &&
            (identical(other.channel, channel) || other.channel == channel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, startTime, finishTime, device, tvShow, client, channel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ViewingDtoImplCopyWith<_$ViewingDtoImpl> get copyWith =>
      __$$ViewingDtoImplCopyWithImpl<_$ViewingDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ViewingDtoImplToJson(
      this,
    );
  }
}

abstract class _ViewingDto implements ViewingDto {
  const factory _ViewingDto(
      {final DateTime? startTime,
      final DateTime? finishTime,
      final String? device,
      final TvShowDto? tvShow,
      final ClientDto? client,
      final ChannelDto? channel}) = _$ViewingDtoImpl;

  factory _ViewingDto.fromJson(Map<String, dynamic> json) =
      _$ViewingDtoImpl.fromJson;

  @override
  DateTime? get startTime;
  @override
  DateTime? get finishTime;
  @override
  String? get device;
  @override
  TvShowDto? get tvShow;
  @override
  ClientDto? get client;
  @override
  ChannelDto? get channel;
  @override
  @JsonKey(ignore: true)
  _$$ViewingDtoImplCopyWith<_$ViewingDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
