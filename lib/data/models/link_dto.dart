import 'package:admin/data/models/address_dto.dart';
import 'package:admin/data/models/client_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'link_dto.freezed.dart';

part 'link_dto.g.dart';

@freezed
class LinkDto with _$LinkDto {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
  )
  const factory LinkDto({
    String? link,
  }) = _LinkDto;

  factory LinkDto.fromJson(Map<String, dynamic> json) =>
      _$LinkDtoFromJson(json);
}
