// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClientDtoImpl _$$ClientDtoImplFromJson(Map<String, dynamic> json) =>
    _$ClientDtoImpl(
      id: (json['id'] as num?)?.toInt(),
      gender: json['gender'] as bool?,
      ageMin: (json['ageMin'] as num?)?.toInt(),
      ageMax: (json['ageMax'] as num?)?.toInt(),
      address: json['address'] == null
          ? null
          : AddressDto.fromJson(json['address'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ClientDtoImplToJson(_$ClientDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'gender': instance.gender,
      'ageMin': instance.ageMin,
      'ageMax': instance.ageMax,
      'address': instance.address,
    };
