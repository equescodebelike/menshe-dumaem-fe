import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:decimal/decimal.dart';

part 'address_dto.freezed.dart';

part 'address_dto.g.dart';

@freezed
class AddressDto with _$AddressDto {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
  )
  const factory AddressDto({
    String? address,
    Decimal? lat,
    Decimal? lon,
    int? flats,
    int? floors,
  }) = _AddressDto;

  factory AddressDto.fromJson(Map<String, dynamic> json) =>
      _$AddressDtoFromJson(json);
}
