import 'package:admin/data/models/address_dto.dart';
import 'package:admin/data/models/category_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tv_show_dto.freezed.dart';

part 'tv_show_dto.g.dart';

@freezed
class TvShowDto with _$TvShowDto {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
  )
  const factory TvShowDto({
    int? id,
    DateTime? startTime,
    DateTime? finishTime,
    int? viewCount,
    String? name,
    String? mainCategory,
    List<CategoryDto>? categories,
  }) = _TvShowDto;

  factory TvShowDto.fromJson(Map<String, dynamic> json) =>
      _$TvShowDtoFromJson(json);
}
