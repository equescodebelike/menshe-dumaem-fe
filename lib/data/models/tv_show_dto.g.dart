// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_show_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TvShowDtoImpl _$$TvShowDtoImplFromJson(Map<String, dynamic> json) =>
    _$TvShowDtoImpl(
      startTime: json['start_time'] == null
          ? null
          : DateTime.parse(json['start_time'] as String),
      finishTime: json['finish_time'] == null
          ? null
          : DateTime.parse(json['finish_time'] as String),
      name: json['name'] as String?,
      mainCategory: json['main_category'] as String?,
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => CategoryDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TvShowDtoImplToJson(_$TvShowDtoImpl instance) =>
    <String, dynamic>{
      'start_time': instance.startTime?.toIso8601String(),
      'finish_time': instance.finishTime?.toIso8601String(),
      'name': instance.name,
      'main_category': instance.mainCategory,
      'categories': instance.categories,
    };
