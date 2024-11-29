import 'dart:io';
import 'dart:typed_data';

import 'package:admin/data/models/address_dto.dart';
import 'package:admin/data/models/category_dto.dart';
import 'package:admin/data/models/client_dto.dart';
import 'package:admin/data/models/client_list_dto.dart';
import 'package:admin/data/models/tv_show_dto.dart';
import 'package:admin/data/models/tv_shows_dto.dart';
import 'package:admin/di/app_components.dart';
import 'package:admin/screens/dashboard/controllers/menu_app_controller.dart';
import 'package:decimal/decimal.dart';
import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher_string.dart';

class TvShowDataSource extends DataTableSource {
  final TvShowsDto tvShows;

  TvShowDataSource(this.tvShows);

  @override
  DataRow? getRow(int index) {
    if (index >= tvShows.tvShows!.length) return null;
    final tvShow = tvShows.tvShows![index];

    return DataRow(
      cells: [
        DataCell(Text(tvShow.name ?? 'N/A')), // Название передачи
        DataCell(Text(tvShow.mainCategory ?? 'N/A')), // Главная категория
        DataCell(Text(
            tvShow.viewCount?.toString() ?? 'N/A')), // Количество просмотров
        DataCell(Text(
            '${tvShow.startTime?.toLocal().toString().substring(0, 19) ?? 'N/A'}')), // Время начала
        DataCell(Text(
            '${tvShow.finishTime?.toLocal().toString().substring(0, 19) ?? 'N/A'}')), // Время окончания
      ],
    );
  }

  @override
  int get rowCount => tvShows.tvShows!.length;

  @override
  bool get isRowCountApproximate => false;

  @override
  int get selectedRowCount => 0;
}

// Пример данных
final TvShowsDto testTvShowsList = TvShowsDto(
  tvShows: [
    TvShowDto(
      id: 1,
      viewCount: 500,
      startTime: DateTime.parse('2024-10-01T12:00:00'),
      finishTime: DateTime.parse('2024-10-01T13:00:00'),
      name: "Утреннее шоу",
      mainCategory: "Новости",
      categories: [
        CategoryDto(
          name: "Новости",
        ),
        CategoryDto(
          name: "Политика",
        )
      ],
    ),
    TvShowDto(
      id: 2,
      viewCount: 300,
      startTime: DateTime.parse('2024-10-01T14:00:00'),
      finishTime: DateTime.parse('2024-10-01T15:30:00'),
      name: "Кулинарный час",
      mainCategory: "Кулинария",
      categories: [
        CategoryDto(
          name: "Кулинария",
        ),
        CategoryDto(
          name: "Развлечения",
        ),
      ],
    ),
    TvShowDto(
      id: 3,
      viewCount: 1000,
      startTime: DateTime.parse('2024-10-02T18:00:00'),
      finishTime: DateTime.parse('2024-10-02T19:00:00'),
      name: "Вечерний выпуск",
      mainCategory: "Новости",
      categories: [
        CategoryDto(
          name: "Новости",
        ),
      ],
    ),
    TvShowDto(
      id: 4,
      viewCount: 750,
      startTime: DateTime.parse('2024-10-03T20:00:00'),
      finishTime: DateTime.parse('2024-10-03T21:00:00'),
      name: "Документальный фильм",
      mainCategory: "Образование",
      categories: [
        CategoryDto(
          name: "Образование",
        ),
      ],
    ),
    TvShowDto(
      id: 5,
      viewCount: 200,
      startTime: DateTime.parse('2024-10-04T10:00:00'),
      finishTime: DateTime.parse('2024-10-04T11:30:00'),
      name: "Детское утро",
      mainCategory: "Детские",
      categories: [
        CategoryDto(
          name: "Детские",
        ),
      ],
    ),
  ],
);

class TvShowTable extends StatelessWidget {
  const TvShowTable({super.key});

  @override
  Widget build(BuildContext context) {
    final repository = AppComponents().tableRepository;

    return FutureBuilder(
      future: repository.getPopularShows(),
      builder: (BuildContext context, AsyncSnapshot<TvShowsDto> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
        if (snapshot.hasError) {
          return Center(
              child: Text('Ошибка загрузки данных: ${snapshot.error}'));
        }
        if (!snapshot.hasData || snapshot.data?.tvShows == null) {
          return const Center(child: Text('Нет данных для отображения.'));
        }

        final dataSource = TvShowDataSource(snapshot.data!);

        return PaginatedDataTable(
          actions: [
            OutlinedButton(
              onPressed: () {
                // Логика фильтров
              },
              child: const Text('Фильтры'),
            ),
            OutlinedButton(
              onPressed: () async {
                final repository = AppComponents().tableRepository;
                final result = await repository.getDownloadPopular();
                if (result.link != null && result.link!.isNotEmpty) {
                  await launchUrlString(result.link!);
                }
              },
              child: const Text('Скачать csv'),
            ),
            // const SizedBox(width: 5),
            // OutlinedButton(
            //   onPressed: () {
            //     // Логика загрузки файла
            //   },
            //   child: const Text('Загрузить'),
            // ),
          ],
          header: MediaQuery.of(context).size.width < 1100
              ? Row(
                  children: [
                    SvgPicture.asset(
                      'assets/images/logout.svg',
                    ),
                    SizedBox(
                      width: 19,
                    ),
                    GestureDetector(
                      onTap: context.read<MenuAppController>().controlMenu,
                      child: Icon(
                        Icons.menu,
                      ),
                    ),
                  ],
                )
              : Row(
                  children: [
                    SvgPicture.asset(
                      'assets/images/logout.svg',
                    ),
                    SizedBox(
                      width: 19,
                    ),
                  ],
                ),
          rowsPerPage: 8,
          columns: const [
            DataColumn(label: Text('Название')),
            DataColumn(label: Text('Категория')),
            DataColumn(label: Text('Просмотры')),
            DataColumn(label: Text('Начало')),
            DataColumn(label: Text('Окончание')),
          ],
          source: dataSource,
        );
      },
    );
  }
}
