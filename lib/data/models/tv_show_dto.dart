import 'package:admin/data/models/address_dto.dart';
import 'package:admin/data/models/category_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tv_show_dto.freezed.dart';

part 'tv_show_dto.g.dart';

@freezed
class TvShowDto with _$TvShowDto {
  const factory TvShowDto({
    DateTime? startTime,
    DateTime? finishTime,
    String? name,
    String? mainCategory,
    List<CategoryDto>? categories,

  }) = _TvShowDto;

  factory TvShowDto.fromJson(Map<String, dynamic> json) =>
      _$TvShowDtoFromJson(json);
}