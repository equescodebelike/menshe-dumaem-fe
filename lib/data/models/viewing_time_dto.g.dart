// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'viewing_time_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ViewingTimeDtoImpl _$$ViewingTimeDtoImplFromJson(Map<String, dynamic> json) =>
    _$ViewingTimeDtoImpl(
      clientId: json['client_id'] as String?,
      channelId: json['channel_id'] as String?,
      totalViewingTime: json['total_viewing_time'] as String?,
    );

Map<String, dynamic> _$$ViewingTimeDtoImplToJson(
        _$ViewingTimeDtoImpl instance) =>
    <String, dynamic>{
      'client_id': instance.clientId,
      'channel_id': instance.channelId,
      'total_viewing_time': instance.totalViewingTime,
    };
