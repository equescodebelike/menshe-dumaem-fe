// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_part1_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthPart1DtoImpl _$$AuthPart1DtoImplFromJson(Map<String, dynamic> json) =>
    _$AuthPart1DtoImpl(
      email: json['email'] as String?,
    );

Map<String, dynamic> _$$AuthPart1DtoImplToJson(_$AuthPart1DtoImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('email', instance.email);
  return val;
}
