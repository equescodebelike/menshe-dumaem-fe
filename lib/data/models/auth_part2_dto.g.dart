// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_part2_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthPart2DtoImpl _$$AuthPart2DtoImplFromJson(Map<String, dynamic> json) =>
    _$AuthPart2DtoImpl(
      email: json['email'] as String?,
      code: json['code'] as String?,
    );

Map<String, dynamic> _$$AuthPart2DtoImplToJson(_$AuthPart2DtoImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('email', instance.email);
  writeNotNull('code', instance.code);
  return val;
}
