// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_list_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClientListDtoImpl _$$ClientListDtoImplFromJson(Map<String, dynamic> json) =>
    _$ClientListDtoImpl(
      list: (json['list'] as List<dynamic>?)
          ?.map((e) => ClientDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ClientListDtoImplToJson(_$ClientListDtoImpl instance) =>
    <String, dynamic>{
      'list': instance.list,
    };
