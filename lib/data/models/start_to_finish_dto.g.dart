// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'start_to_finish_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StartToFinishDtoImpl _$$StartToFinishDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$StartToFinishDtoImpl(
      startTime: json['start_time'] as String?,
      finishTime: json['finish_time'] as String?,
      sort_by: json['sort_by'] as String?,
      ageMin: (json['age_min'] as num?)?.toInt(),
      ageMax: (json['age_max'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$StartToFinishDtoImplToJson(
    _$StartToFinishDtoImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('start_time', instance.startTime);
  writeNotNull('finish_time', instance.finishTime);
  writeNotNull('sort_by', instance.sort_by);
  writeNotNull('age_min', instance.ageMin);
  writeNotNull('age_max', instance.ageMax);
  return val;
}
