// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'viewing_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ViewingDtoImpl _$$ViewingDtoImplFromJson(Map<String, dynamic> json) =>
    _$ViewingDtoImpl(
      startTime: json['start_time'] == null
          ? null
          : DateTime.parse(json['start_time'] as String),
      finishTime: json['finish_time'] == null
          ? null
          : DateTime.parse(json['finish_time'] as String),
      device: json['device'] as String?,
      tvShow: json['tv_show'] == null
          ? null
          : TvShowDto.fromJson(json['tv_show'] as Map<String, dynamic>),
      client: json['client'] == null
          ? null
          : ClientDto.fromJson(json['client'] as Map<String, dynamic>),
      channel: json['channel'] == null
          ? null
          : ChannelDto.fromJson(json['channel'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ViewingDtoImplToJson(_$ViewingDtoImpl instance) =>
    <String, dynamic>{
      'start_time': instance.startTime?.toIso8601String(),
      'finish_time': instance.finishTime?.toIso8601String(),
      'device': instance.device,
      'tv_show': instance.tvShow,
      'client': instance.client,
      'channel': instance.channel,
    };
