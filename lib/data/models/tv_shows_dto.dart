import 'package:admin/data/models/address_dto.dart';
import 'package:admin/data/models/client_dto.dart';
import 'package:admin/data/models/tv_show_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tv_shows_dto.freezed.dart';

part 'tv_shows_dto.g.dart';

@freezed
class TvShowsDto with _$TvShowsDto {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
  )
  const factory TvShowsDto({
    List<TvShowDto>? tvShows,
  }) = _TvShowsDto;

  factory TvShowsDto.fromJson(Map<String, dynamic> json) =>
      _$TvShowsDtoFromJson(json);
}
