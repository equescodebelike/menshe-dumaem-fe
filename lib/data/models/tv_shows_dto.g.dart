// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_shows_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TvShowsDtoImpl _$$TvShowsDtoImplFromJson(Map<String, dynamic> json) =>
    _$TvShowsDtoImpl(
      tvShows: (json['tv_shows'] as List<dynamic>?)
          ?.map((e) => TvShowDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TvShowsDtoImplToJson(_$TvShowsDtoImpl instance) =>
    <String, dynamic>{
      'tv_shows': instance.tvShows,
    };
