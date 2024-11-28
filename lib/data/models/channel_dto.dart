import 'package:admin/data/models/address_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'channel_dto.freezed.dart';

part 'channel_dto.g.dart';

@freezed
class ChannelDto with _$ChannelDto {
  const factory ChannelDto({
    int? id,

  }) = _ChannelDto;

  factory ChannelDto.fromJson(Map<String, dynamic> json) =>
      _$ChannelDtoFromJson(json);
}