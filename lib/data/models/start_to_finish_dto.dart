import 'package:admin/data/models/address_dto.dart';
import 'package:admin/data/models/category_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'start_to_finish_dto.freezed.dart';

part 'start_to_finish_dto.g.dart';

@freezed
class StartToFinishDto with _$StartToFinishDto {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    includeIfNull: false,
  )
  const factory StartToFinishDto({
    String? startTime,
    String? finishTime,
    String? sort_by, 
    int? ageMin,    
    int? ageMax,
    String? email,

  }) = _StartToFinishDto;

  factory StartToFinishDto.fromJson(Map<String, dynamic> json) =>
      _$StartToFinishDtoFromJson(json);
}

