import 'package:admin/data/models/address_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'client_dto.freezed.dart';

part 'client_dto.g.dart';

@freezed
class ClientDto with _$ClientDto {
  const factory ClientDto({
    int? id,
    bool? gender,
    int? ageMin,
    int? ageMax,
    AddressDto? address,

  }) = _ClientDto;

  factory ClientDto.fromJson(Map<String, dynamic> json) =>
      _$ClientDtoFromJson(json);
}