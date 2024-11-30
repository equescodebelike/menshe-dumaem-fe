// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'start_to_finish_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StartToFinishDto _$StartToFinishDtoFromJson(Map<String, dynamic> json) {
  return _StartToFinishDto.fromJson(json);
}

/// @nodoc
mixin _$StartToFinishDto {
  String? get startTime => throw _privateConstructorUsedError;
  String? get finishTime => throw _privateConstructorUsedError;
  String? get sort_by => throw _privateConstructorUsedError;
  int? get ageMin => throw _privateConstructorUsedError;
  int? get ageMax => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StartToFinishDtoCopyWith<StartToFinishDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StartToFinishDtoCopyWith<$Res> {
  factory $StartToFinishDtoCopyWith(
          StartToFinishDto value, $Res Function(StartToFinishDto) then) =
      _$StartToFinishDtoCopyWithImpl<$Res, StartToFinishDto>;
  @useResult
  $Res call(
      {String? startTime,
      String? finishTime,
      String? sort_by,
      int? ageMin,
      int? ageMax,
      String? email});
}

/// @nodoc
class _$StartToFinishDtoCopyWithImpl<$Res, $Val extends StartToFinishDto>
    implements $StartToFinishDtoCopyWith<$Res> {
  _$StartToFinishDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTime = freezed,
    Object? finishTime = freezed,
    Object? sort_by = freezed,
    Object? ageMin = freezed,
    Object? ageMax = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      finishTime: freezed == finishTime
          ? _value.finishTime
          : finishTime // ignore: cast_nullable_to_non_nullable
              as String?,
      sort_by: freezed == sort_by
          ? _value.sort_by
          : sort_by // ignore: cast_nullable_to_non_nullable
              as String?,
      ageMin: freezed == ageMin
          ? _value.ageMin
          : ageMin // ignore: cast_nullable_to_non_nullable
              as int?,
      ageMax: freezed == ageMax
          ? _value.ageMax
          : ageMax // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StartToFinishDtoImplCopyWith<$Res>
    implements $StartToFinishDtoCopyWith<$Res> {
  factory _$$StartToFinishDtoImplCopyWith(_$StartToFinishDtoImpl value,
          $Res Function(_$StartToFinishDtoImpl) then) =
      __$$StartToFinishDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? startTime,
      String? finishTime,
      String? sort_by,
      int? ageMin,
      int? ageMax,
      String? email});
}

/// @nodoc
class __$$StartToFinishDtoImplCopyWithImpl<$Res>
    extends _$StartToFinishDtoCopyWithImpl<$Res, _$StartToFinishDtoImpl>
    implements _$$StartToFinishDtoImplCopyWith<$Res> {
  __$$StartToFinishDtoImplCopyWithImpl(_$StartToFinishDtoImpl _value,
      $Res Function(_$StartToFinishDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTime = freezed,
    Object? finishTime = freezed,
    Object? sort_by = freezed,
    Object? ageMin = freezed,
    Object? ageMax = freezed,
    Object? email = freezed,
  }) {
    return _then(_$StartToFinishDtoImpl(
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      finishTime: freezed == finishTime
          ? _value.finishTime
          : finishTime // ignore: cast_nullable_to_non_nullable
              as String?,
      sort_by: freezed == sort_by
          ? _value.sort_by
          : sort_by // ignore: cast_nullable_to_non_nullable
              as String?,
      ageMin: freezed == ageMin
          ? _value.ageMin
          : ageMin // ignore: cast_nullable_to_non_nullable
              as int?,
      ageMax: freezed == ageMax
          ? _value.ageMax
          : ageMax // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class _$StartToFinishDtoImpl implements _StartToFinishDto {
  const _$StartToFinishDtoImpl(
      {this.startTime,
      this.finishTime,
      this.sort_by,
      this.ageMin,
      this.ageMax,
      this.email});

  factory _$StartToFinishDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$StartToFinishDtoImplFromJson(json);

  @override
  final String? startTime;
  @override
  final String? finishTime;
  @override
  final String? sort_by;
  @override
  final int? ageMin;
  @override
  final int? ageMax;
  @override
  final String? email;

  @override
  String toString() {
    return 'StartToFinishDto(startTime: $startTime, finishTime: $finishTime, sort_by: $sort_by, ageMin: $ageMin, ageMax: $ageMax, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartToFinishDtoImpl &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.finishTime, finishTime) ||
                other.finishTime == finishTime) &&
            (identical(other.sort_by, sort_by) || other.sort_by == sort_by) &&
            (identical(other.ageMin, ageMin) || other.ageMin == ageMin) &&
            (identical(other.ageMax, ageMax) || other.ageMax == ageMax) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, startTime, finishTime, sort_by, ageMin, ageMax, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartToFinishDtoImplCopyWith<_$StartToFinishDtoImpl> get copyWith =>
      __$$StartToFinishDtoImplCopyWithImpl<_$StartToFinishDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StartToFinishDtoImplToJson(
      this,
    );
  }
}

abstract class _StartToFinishDto implements StartToFinishDto {
  const factory _StartToFinishDto(
      {final String? startTime,
      final String? finishTime,
      final String? sort_by,
      final int? ageMin,
      final int? ageMax,
      final String? email}) = _$StartToFinishDtoImpl;

  factory _StartToFinishDto.fromJson(Map<String, dynamic> json) =
      _$StartToFinishDtoImpl.fromJson;

  @override
  String? get startTime;
  @override
  String? get finishTime;
  @override
  String? get sort_by;
  @override
  int? get ageMin;
  @override
  int? get ageMax;
  @override
  String? get email;
  @override
  @JsonKey(ignore: true)
  _$$StartToFinishDtoImplCopyWith<_$StartToFinishDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
