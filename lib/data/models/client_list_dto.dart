import 'package:admin/data/models/address_dto.dart';
import 'package:admin/data/models/client_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'client_list_dto.freezed.dart';

part 'client_list_dto.g.dart';

@freezed
class ClientListDto with _$ClientListDto {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
  )
  const factory ClientListDto({
    List<ClientDto>? clients,
  }) = _ClientListDto;

  factory ClientListDto.fromJson(Map<String, dynamic> json) =>
      _$ClientListDtoFromJson(json);
}
