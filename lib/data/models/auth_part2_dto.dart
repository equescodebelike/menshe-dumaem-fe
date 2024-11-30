import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_part2_dto.g.dart';
part 'auth_part2_dto.freezed.dart';

@freezed
class AuthPart2Dto with _$AuthPart2Dto {
  @JsonSerializable(
    explicitToJson: true,
    includeIfNull: false,
  )
  const factory AuthPart2Dto({
    String? email,
    String? code,
  }) = _AuthPart2Dto;

  factory AuthPart2Dto.fromJson(Map<String, dynamic> json) =>
      _$AuthPart2DtoFromJson(json);
}
