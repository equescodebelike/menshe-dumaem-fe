// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'client_analytics_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ClientAnalyticsDto _$ClientAnalyticsDtoFromJson(Map<String, dynamic> json) {
  return _ClientAnalyticsDto.fromJson(json);
}

/// @nodoc
mixin _$ClientAnalyticsDto {
  String? get clientId => throw _privateConstructorUsedError;
  List<int>? get recommendedChannels => throw _privateConstructorUsedError;
  List<String>? get recommendedPackages => throw _privateConstructorUsedError;
  List<String>? get recommendedTvShows => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientAnalyticsDtoCopyWith<ClientAnalyticsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientAnalyticsDtoCopyWith<$Res> {
  factory $ClientAnalyticsDtoCopyWith(
          ClientAnalyticsDto value, $Res Function(ClientAnalyticsDto) then) =
      _$ClientAnalyticsDtoCopyWithImpl<$Res, ClientAnalyticsDto>;
  @useResult
  $Res call(
      {String? clientId,
      List<int>? recommendedChannels,
      List<String>? recommendedPackages,
      List<String>? recommendedTvShows});
}

/// @nodoc
class _$ClientAnalyticsDtoCopyWithImpl<$Res, $Val extends ClientAnalyticsDto>
    implements $ClientAnalyticsDtoCopyWith<$Res> {
  _$ClientAnalyticsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientId = freezed,
    Object? recommendedChannels = freezed,
    Object? recommendedPackages = freezed,
    Object? recommendedTvShows = freezed,
  }) {
    return _then(_value.copyWith(
      clientId: freezed == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String?,
      recommendedChannels: freezed == recommendedChannels
          ? _value.recommendedChannels
          : recommendedChannels // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      recommendedPackages: freezed == recommendedPackages
          ? _value.recommendedPackages
          : recommendedPackages // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      recommendedTvShows: freezed == recommendedTvShows
          ? _value.recommendedTvShows
          : recommendedTvShows // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClientAnalyticsDtoImplCopyWith<$Res>
    implements $ClientAnalyticsDtoCopyWith<$Res> {
  factory _$$ClientAnalyticsDtoImplCopyWith(_$ClientAnalyticsDtoImpl value,
          $Res Function(_$ClientAnalyticsDtoImpl) then) =
      __$$ClientAnalyticsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? clientId,
      List<int>? recommendedChannels,
      List<String>? recommendedPackages,
      List<String>? recommendedTvShows});
}

/// @nodoc
class __$$ClientAnalyticsDtoImplCopyWithImpl<$Res>
    extends _$ClientAnalyticsDtoCopyWithImpl<$Res, _$ClientAnalyticsDtoImpl>
    implements _$$ClientAnalyticsDtoImplCopyWith<$Res> {
  __$$ClientAnalyticsDtoImplCopyWithImpl(_$ClientAnalyticsDtoImpl _value,
      $Res Function(_$ClientAnalyticsDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientId = freezed,
    Object? recommendedChannels = freezed,
    Object? recommendedPackages = freezed,
    Object? recommendedTvShows = freezed,
  }) {
    return _then(_$ClientAnalyticsDtoImpl(
      clientId: freezed == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String?,
      recommendedChannels: freezed == recommendedChannels
          ? _value._recommendedChannels
          : recommendedChannels // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      recommendedPackages: freezed == recommendedPackages
          ? _value._recommendedPackages
          : recommendedPackages // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      recommendedTvShows: freezed == recommendedTvShows
          ? _value._recommendedTvShows
          : recommendedTvShows // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$ClientAnalyticsDtoImpl implements _ClientAnalyticsDto {
  const _$ClientAnalyticsDtoImpl(
      {this.clientId,
      final List<int>? recommendedChannels,
      final List<String>? recommendedPackages,
      final List<String>? recommendedTvShows})
      : _recommendedChannels = recommendedChannels,
        _recommendedPackages = recommendedPackages,
        _recommendedTvShows = recommendedTvShows;

  factory _$ClientAnalyticsDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClientAnalyticsDtoImplFromJson(json);

  @override
  final String? clientId;
  final List<int>? _recommendedChannels;
  @override
  List<int>? get recommendedChannels {
    final value = _recommendedChannels;
    if (value == null) return null;
    if (_recommendedChannels is EqualUnmodifiableListView)
      return _recommendedChannels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _recommendedPackages;
  @override
  List<String>? get recommendedPackages {
    final value = _recommendedPackages;
    if (value == null) return null;
    if (_recommendedPackages is EqualUnmodifiableListView)
      return _recommendedPackages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _recommendedTvShows;
  @override
  List<String>? get recommendedTvShows {
    final value = _recommendedTvShows;
    if (value == null) return null;
    if (_recommendedTvShows is EqualUnmodifiableListView)
      return _recommendedTvShows;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ClientAnalyticsDto(clientId: $clientId, recommendedChannels: $recommendedChannels, recommendedPackages: $recommendedPackages, recommendedTvShows: $recommendedTvShows)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientAnalyticsDtoImpl &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            const DeepCollectionEquality()
                .equals(other._recommendedChannels, _recommendedChannels) &&
            const DeepCollectionEquality()
                .equals(other._recommendedPackages, _recommendedPackages) &&
            const DeepCollectionEquality()
                .equals(other._recommendedTvShows, _recommendedTvShows));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      clientId,
      const DeepCollectionEquality().hash(_recommendedChannels),
      const DeepCollectionEquality().hash(_recommendedPackages),
      const DeepCollectionEquality().hash(_recommendedTvShows));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientAnalyticsDtoImplCopyWith<_$ClientAnalyticsDtoImpl> get copyWith =>
      __$$ClientAnalyticsDtoImplCopyWithImpl<_$ClientAnalyticsDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientAnalyticsDtoImplToJson(
      this,
    );
  }
}

abstract class _ClientAnalyticsDto implements ClientAnalyticsDto {
  const factory _ClientAnalyticsDto(
      {final String? clientId,
      final List<int>? recommendedChannels,
      final List<String>? recommendedPackages,
      final List<String>? recommendedTvShows}) = _$ClientAnalyticsDtoImpl;

  factory _ClientAnalyticsDto.fromJson(Map<String, dynamic> json) =
      _$ClientAnalyticsDtoImpl.fromJson;

  @override
  String? get clientId;
  @override
  List<int>? get recommendedChannels;
  @override
  List<String>? get recommendedPackages;
  @override
  List<String>? get recommendedTvShows;
  @override
  @JsonKey(ignore: true)
  _$$ClientAnalyticsDtoImplCopyWith<_$ClientAnalyticsDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
