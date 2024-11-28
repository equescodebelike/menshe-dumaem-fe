import 'package:admin/data/models/client_list_dto.dart';
import 'package:admin/data/service/table_service.dart';
import 'package:dio/dio.dart';

class TableRepository {
  TableRepository(
    this.service,
  );

  final TableService service;

  Future<ClientListDto> getTable() {
    try {
      final result = service.getTable();
      return result;
    } on DioException catch (error) {
      throw Exception(error.response?.data['message']);
    }
  }
}
