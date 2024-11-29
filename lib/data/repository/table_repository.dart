import 'dart:io';
import 'dart:typed_data';

import 'package:admin/data/models/client_list_dto.dart';
import 'package:admin/data/models/tv_shows_dto.dart';
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

  Future<void> updateAddresses(FormData data) async {
    try {
      await service.updateAddresses(data);
    } on DioException catch (error) {
      throw Exception(error.response?.data['message']);
    }
  }

  Future<void> updateAddressesBinary(Uint8List fileBytes) async {
    try {
      await service.updateAddressesBinary(fileBytes);
    } on DioException catch (error) {
      throw Exception(error.response?.data['message']);
    }
  }

  Future<TvShowsDto> getPopularShows() async {
    try {
      final result = service.getPopularShows();
      return result;
    } on DioException catch (error) {
      throw Exception(error.response?.data['message']);
    }
  }
}
