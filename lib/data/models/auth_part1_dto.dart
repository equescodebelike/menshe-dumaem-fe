import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_part1_dto.g.dart';
part 'auth_part1_dto.freezed.dart';

@freezed
class AuthPart1Dto with _$AuthPart1Dto {
  @JsonSerializable(
    explicitToJson: true,
    includeIfNull: false,
  )
  const factory AuthPart1Dto({
    String? email,
  }) = _AuthPart1Dto;

  factory AuthPart1Dto.fromJson(Map<String, dynamic> json) =>
      _$AuthPart1DtoFromJson(json);
}
