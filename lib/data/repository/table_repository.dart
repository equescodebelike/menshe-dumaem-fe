import 'dart:io';
import 'dart:typed_data';

import 'package:admin/data/models/client_list_dto.dart';
import 'package:admin/data/models/link_dto.dart';
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
      final result = service.getTableAddress();
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

  Future<TvShowsDto> fetchAndProcessPopularShows() async {
    try {
      final popularShows = await service.getPopularShows();
      final sortedShows = popularShows.tvShows?.take(10).toList();
      return TvShowsDto(
        tvShows: sortedShows,
      );
    } on DioException catch (error) {
      throw Exception(error.response?.data['message']);
    }
  }

  Future<LinkDto> getDownloadPopular() async {
    try {
      final result = await service.downloadMostViewed();
      return result;
    } on DioException catch (error) {
      throw Exception(error.response?.data['message']);
    }
  }
}
