// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_show_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TvShowDtoImpl _$$TvShowDtoImplFromJson(Map<String, dynamic> json) =>
    _$TvShowDtoImpl(
      startTime: json['startTime'] == null
          ? null
          : DateTime.parse(json['startTime'] as String),
      finishTime: json['finishTime'] == null
          ? null
          : DateTime.parse(json['finishTime'] as String),
      name: json['name'] as String?,
      mainCategory: json['mainCategory'] as String?,
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => CategoryDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TvShowDtoImplToJson(_$TvShowDtoImpl instance) =>
    <String, dynamic>{
      'startTime': instance.startTime?.toIso8601String(),
      'finishTime': instance.finishTime?.toIso8601String(),
      'name': instance.name,
      'mainCategory': instance.mainCategory,
      'categories': instance.categories,
    };
