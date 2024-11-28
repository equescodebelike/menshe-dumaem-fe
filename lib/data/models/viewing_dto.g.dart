// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'viewing_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ViewingDtoImpl _$$ViewingDtoImplFromJson(Map<String, dynamic> json) =>
    _$ViewingDtoImpl(
      startTime: json['startTime'] == null
          ? null
          : DateTime.parse(json['startTime'] as String),
      finishTime: json['finishTime'] == null
          ? null
          : DateTime.parse(json['finishTime'] as String),
      device: json['device'] as String?,
      tvShow: json['tvShow'] == null
          ? null
          : TvShowDto.fromJson(json['tvShow'] as Map<String, dynamic>),
      client: json['client'] == null
          ? null
          : ClientDto.fromJson(json['client'] as Map<String, dynamic>),
      channel: json['channel'] == null
          ? null
          : ChannelDto.fromJson(json['channel'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ViewingDtoImplToJson(_$ViewingDtoImpl instance) =>
    <String, dynamic>{
      'startTime': instance.startTime?.toIso8601String(),
      'finishTime': instance.finishTime?.toIso8601String(),
      'device': instance.device,
      'tvShow': instance.tvShow,
      'client': instance.client,
      'channel': instance.channel,
    };
