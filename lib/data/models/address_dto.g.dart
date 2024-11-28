// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddressDtoImpl _$$AddressDtoImplFromJson(Map<String, dynamic> json) =>
    _$AddressDtoImpl(
      address: json['address'] as String?,
      lat: json['lat'] == null ? null : Decimal.fromJson(json['lat'] as String),
      lon: json['lon'] == null ? null : Decimal.fromJson(json['lon'] as String),
      flats: (json['flats'] as num?)?.toInt(),
      floors: (json['floors'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$AddressDtoImplToJson(_$AddressDtoImpl instance) =>
    <String, dynamic>{
      'address': instance.address,
      'lat': instance.lat,
      'lon': instance.lon,
      'flats': instance.flats,
      'floors': instance.floors,
    };
