import 'package:admin/data/models/address_dto.dart';
import 'package:admin/data/models/category_dto.dart';
import 'package:admin/data/models/channel_dto.dart';
import 'package:admin/data/models/client_dto.dart';
import 'package:admin/data/models/tv_show_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'viewing_dto.freezed.dart';

part 'viewing_dto.g.dart';

@freezed
class ViewingDto with _$ViewingDto {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
  )
  const factory ViewingDto({
    DateTime? startTime,
    DateTime? finishTime,
    String? device,
    TvShowDto? tvShow,
    ClientDto? client,
    ChannelDto? channel,
  }) = _ViewingDto;

  factory ViewingDto.fromJson(Map<String, dynamic> json) =>
      _$ViewingDtoFromJson(json);
}
