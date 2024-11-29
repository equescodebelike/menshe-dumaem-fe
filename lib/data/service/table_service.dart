import 'dart:async';
import 'dart:io';
import 'package:admin/data/models/client_list_dto.dart';
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

  @POST('/analytics/most_viewed_tw_shows/')
  Future<TvShowsDto> getPopularShows();

  @GET('/data/clients/')
  Future<ClientListDto> getTableAddress();

  @POST('/data/update_addresses/')
  @Headers({'Content-Type': 'text/csv'})
  Future<void> updateAddressesBinary(@Body() List<int> fileBytes);
}
