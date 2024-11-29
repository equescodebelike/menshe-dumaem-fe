import 'package:admin/data/models/address_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'channel_package_dto.freezed.dart';

part 'channel_package_dto.g.dart';

@freezed
class ChannelPackageDto with _$ChannelPackageDto {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
  )
  const factory ChannelPackageDto({
    String? name,

  }) = _ChannelPackageDto;

  factory ChannelPackageDto.fromJson(Map<String, dynamic> json) =>
      _$ChannelPackageDtoFromJson(json);
}