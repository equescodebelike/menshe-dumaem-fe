import 'dart:async';
import 'dart:io';
import 'package:admin/data/models/auth_part1_dto.dart';
import 'package:admin/data/models/auth_part2_dto.dart';
import 'package:admin/data/models/client_analytics_dto.dart';
import 'package:admin/data/models/client_dto.dart';
import 'package:admin/data/models/client_list_dto.dart';
import 'package:admin/data/models/link_dto.dart';
import 'package:admin/data/models/start_to_finish_dto.dart';
import 'package:admin/data/models/tv_shows_dto.dart';
import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'table_service.g.dart';

@RestApi()
abstract class TableService {
  factory TableService(
    Dio dio, {
    String baseUrl,
  }) = _TableService;

  @GET('/data/test')
  Future<ClientListDto> getTable();

  @POST('/data/update_addresses/')
  @Headers(<String, dynamic>{'Content-Type': 'text/csv'})
  Future<void> updateAddresses(@Body() FormData data);

  // фильтры
  @POST('/analytics/most_viewed_tw_shows/')
  Future<TvShowsDto> getPopularShows({
    @Body() StartToFinishDto? request,
  });

  @GET('/data/clients/')
  Future<ClientListDto> getTableAddress();

  @POST('/data/update_addresses/')
  @Headers({'Content-Type': 'text/csv'})
  Future<void> updateAddressesBinary(@Body() List<int> fileBytes);

  // фильтры
  @POST('/analytics/most_viewed_tw_shows_file/')
  Future<LinkDto> downloadMostViewed();

  @POST('/recommend/recommend_file/')
  Future<LinkDto> downloadRecommendProfile(
    @Query('client_id') int clientId,
  );

  @POST('/recommend/recommend/')
  Future<ClientAnalyticsDto> getAnalyticsForClient(
    @Query('client_id') int clientId,
  );

  @GET('/data/client/')
  Future<ClientDto> getClientMap(
    @Query('client_id') int clientId,
  );

  @POST('/auth/part1')
  Future<void> authPart1({
    @Body() required AuthPart1Dto request,
  });

  @POST('/auth/part2')
  Future<void> authPart2({
    @Body() required AuthPart2Dto request,
  });

  @POST('/analytics/most_viewed_tw_shows_email/')
  Future<void> sendTvShowsEmail({
    @Body() required StartToFinishDto request,
  });

  @GET('/recommend/recommend_email/')
  Future<void> sendRecommendEmail({
    @Query('client_id') required int clientId,
    @Body() required StartToFinishDto request,
  });
}
