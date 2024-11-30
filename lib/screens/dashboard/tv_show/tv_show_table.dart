import 'dart:io';
import 'dart:typed_data';

import 'package:admin/data/models/address_dto.dart';
import 'package:admin/data/models/category_dto.dart';
import 'package:admin/data/models/client_dto.dart';
import 'package:admin/data/models/client_list_dto.dart';
import 'package:admin/data/models/start_to_finish_dto.dart';
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
        DataCell(Text(tvShow.name ?? 'N/A')),
        DataCell(Text(tvShow.mainCategory ?? 'N/A')), 
        DataCell(Text(
            tvShow.viewCount?.toString() ?? 'N/A')),
        DataCell(Text(
            '${tvShow.startTime?.toLocal().toString().substring(0, 19) ?? 'N/A'}')),
        DataCell(Text(
            '${tvShow.finishTime?.toLocal().toString().substring(0, 19) ?? 'N/A'}')), 
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

class TvShowTable extends StatefulWidget {
  const TvShowTable({super.key});

  @override
  State<TvShowTable> createState() => _TvShowTableState();
}

class _TvShowTableState extends State<TvShowTable> {
  Future<TvShowsDto>? _tvShowsFuture;
  StartToFinishDto? _selectedTime;

  @override
  void initState() {
    super.initState();
    _loadShows();
  }

  void _loadShows() {
    final repository = AppComponents().tableRepository;
    _tvShowsFuture = repository.getPopularShows(_selectedTime);
  }

  void _showFilterDialog() {
    final TextEditingController startTimeController = TextEditingController();
    final TextEditingController finishTimeController = TextEditingController();
    final TextEditingController ageMinController = TextEditingController();
    final TextEditingController ageMaxController = TextEditingController();
    String? selectedSortBy;

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Фильтры'),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: startTimeController,
                  decoration: const InputDecoration(
                    labelText: 'Начальное время (HH:mm)',
                  ),
                  keyboardType: TextInputType.datetime,
                ),
                const SizedBox(height: 8),
                TextField(
                  controller: finishTimeController,
                  decoration: const InputDecoration(
                    labelText: 'Конечное время (HH:mm)',
                  ),
                  keyboardType: TextInputType.datetime,
                ),
                const SizedBox(height: 8),
                DropdownButtonFormField<String>(
                  value: selectedSortBy,
                  decoration: const InputDecoration(
                    labelText: 'Сортировать по',
                  ),
                  items: const [
                    DropdownMenuItem(
                      value: 'most_watched',
                      child: Text('Самые просматриваемые'),
                    ),
                    DropdownMenuItem(
                      value: 'watch_time',
                      child: Text('Общее время просмотра'),
                    ),
                    DropdownMenuItem(
                      value: 'start_time',
                      child: Text('Начальное время'),
                    ),
                  ],
                  onChanged: (value) {
                    selectedSortBy = value;
                  },
                ),
                const SizedBox(height: 8),
                TextField(
                  controller: ageMinController,
                  decoration: const InputDecoration(
                    labelText: 'Минимальный возраст',
                  ),
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(height: 8),
                TextField(
                  controller: ageMaxController,
                  decoration: const InputDecoration(
                    labelText: 'Максимальный возраст',
                  ),
                  keyboardType: TextInputType.number,
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Отмена'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _selectedTime = StartToFinishDto(
                    startTime: startTimeController.text.isEmpty
                        ? null
                        : startTimeController.text,
                    finishTime: finishTimeController.text.isEmpty
                        ? null
                        : startTimeController.text,
                    sort_by: selectedSortBy ?? null,
                    ageMin: int.tryParse(ageMinController.text),
                    ageMax: int.tryParse(ageMaxController.text),
                  );
                  _loadShows();
                });
                Navigator.of(context).pop();
              },
              child: const Text('Применить'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<TvShowsDto>(
      future: _tvShowsFuture,
      builder: (BuildContext context, AsyncSnapshot<TvShowsDto> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
        if (snapshot.hasError) {
          return Center(
            child: Text('Ошибка загрузки данных: ${snapshot.error}'),
          );
        }
        if (!snapshot.hasData || snapshot.data?.tvShows == null) {
          return const Center(child: Text('Нет данных для отображения.'));
        }

        final dataSource = TvShowDataSource(snapshot.data!);

        return PaginatedDataTable(
          actions: [
            OutlinedButton(
              onPressed: _showFilterDialog, 
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
          ],
          header: MediaQuery.of(context).size.width < 1100
              ? Row(
                  children: [
                    SvgPicture.asset(
                      'assets/images/logout.svg',
                    ),
                    const SizedBox(
                      width: 19,
                    ),
                    GestureDetector(
                      onTap: context.read<MenuAppController>().controlMenu,
                      child: const Icon(
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
                    const SizedBox(
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
