import 'package:admin/data/models/address_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'client_analytics_dto.freezed.dart';
part 'client_analytics_dto.g.dart';

@freezed
class ClientAnalyticsDto with _$ClientAnalyticsDto {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
  )
  const factory ClientAnalyticsDto({
    String? clientId,
    List<int>? recommendedChannels,
    List<String>? recommendedPackages,
    List<String>? recommendedTvShows
  }) = _ClientAnalyticsDto;

  factory ClientAnalyticsDto.fromJson(Map<String, dynamic> json) =>
      _$ClientAnalyticsDtoFromJson(json);
}
