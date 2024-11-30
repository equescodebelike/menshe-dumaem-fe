import 'package:admin/data/models/address_dto.dart';
import 'package:admin/data/models/category_dto.dart';
import 'package:admin/data/models/channel_dto.dart';
import 'package:admin/data/models/client_dto.dart';
import 'package:admin/data/models/tv_show_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'viewing_time_dto.freezed.dart';

part 'viewing_time_dto.g.dart';

@freezed
class ViewingTimeDto with _$ViewingTimeDto {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
  )
  const factory ViewingTimeDto({
    String? clientId,
    String? channelId,
    String? totalViewingTime,
  }) = _ViewingTimeDto;

  factory ViewingTimeDto.fromJson(Map<String, dynamic> json) =>
      _$ViewingTimeDtoFromJson(json);
}
