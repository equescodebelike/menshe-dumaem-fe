import 'dart:async';
import 'package:admin/data/models/client_list_dto.dart';
import 'package:dio/dio.dart';
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

}
