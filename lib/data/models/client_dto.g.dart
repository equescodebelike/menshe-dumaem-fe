// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClientDtoImpl _$$ClientDtoImplFromJson(Map<String, dynamic> json) =>
    _$ClientDtoImpl(
      id: (json['id'] as num?)?.toInt(),
      gender: json['gender'] as bool?,
      externalId: json['external_id'] as String?,
      ageMin: (json['age_min'] as num?)?.toInt(),
      ageMax: (json['age_max'] as num?)?.toInt(),
      preferredCategory: json['preferred_category'] as String?,
      color: json['color'] as String?,
      address: json['address'] == null
          ? null
          : AddressDto.fromJson(json['address'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ClientDtoImplToJson(_$ClientDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'gender': instance.gender,
      'external_id': instance.externalId,
      'age_min': instance.ageMin,
      'age_max': instance.ageMax,
      'preferred_category': instance.preferredCategory,
      'color': instance.color,
      'address': instance.address,
    };
