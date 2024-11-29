// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_analytics_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClientAnalyticsDtoImpl _$$ClientAnalyticsDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ClientAnalyticsDtoImpl(
      clientId: json['client_id'] as String?,
      recommendedChannels: (json['recommended_channels'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      recommendedPackages: (json['recommended_packages'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      recommendedTvShows: (json['recommended_tv_shows'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$ClientAnalyticsDtoImplToJson(
        _$ClientAnalyticsDtoImpl instance) =>
    <String, dynamic>{
      'client_id': instance.clientId,
      'recommended_channels': instance.recommendedChannels,
      'recommended_packages': instance.recommendedPackages,
      'recommended_tv_shows': instance.recommendedTvShows,
    };
