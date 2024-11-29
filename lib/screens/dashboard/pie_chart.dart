import 'package:admin/constants.dart';
import 'package:admin/data/models/client_list_dto.dart';
import 'package:admin/di/app_components.dart';
import 'package:admin/screens/dashboard/controllers/menu_app_controller.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PieChartExample extends StatelessWidget {
  const PieChartExample({super.key});

  @override
  Widget build(BuildContext context) {
    final repository = AppComponents().tableRepository;

    return FutureBuilder(
      future: repository.getTable(),
      builder: (BuildContext context, AsyncSnapshot<ClientListDto> snapshot) {
        if (snapshot.hasData && snapshot.data != null) {
          final clients = snapshot.data!.clients ?? [];

          // Подсчет количества мужчин и женщин
          final maleCount =
              clients.where((client) => client.gender == true).length;
          final femaleCount =
              clients.where((client) => client.gender == false).length;

          // Функция для извлечения названия улицы
          String extractStreet(String? address) {
            if (address == null || address.isEmpty) return 'Неизвестная улица';
            final match = RegExp(r'^([^,]+),').firstMatch(address);
            return match?.group(1)?.trim() ?? 'Неизвестная улица';
          }

          // Подсчет топ-10 улиц
          final streetCount = <String, int>{};
          for (final client in clients) {
            final street = extractStreet(client.address?.address);
            streetCount[street] = (streetCount[street] ?? 0) + 1;
          }

          // Сортировка и выбор топ-10
          final topStreets = streetCount.entries.toList()
            ..sort((a, b) => b.value.compareTo(a.value));
          final top10Streets = topStreets.take(10);

          return Container(
            padding: EdgeInsets.all(defaultPadding),
            decoration: BoxDecoration(
              color: secondaryColor,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MediaQuery.of(context).size.width < 1100
                      ? Row(
                          children: [
                            GestureDetector(
                              onTap:
                                  context.read<MenuAppController>().controlMenu,
                              child: Icon(
                                Icons.menu,
                              ),
                            ),
                          ],
                        )
                      : SizedBox.shrink(),
                  // Диаграмма по полу
                  Text('Диаграмма разделения по полу',
                      style: Theme.of(context).textTheme.titleLarge),
                  SizedBox(
                    height: 200,
                    child: PieChart(
                      PieChartData(
                        sections: [
                          PieChartSectionData(
                            value: maleCount.toDouble(),
                            title: 'Мужчины: $maleCount',
                            color: Colors.blue,
                            radius: 60,
                          ),
                          PieChartSectionData(
                            value: femaleCount.toDouble(),
                            title: 'Женщины: $femaleCount',
                            color: Colors.pink,
                            radius: 60,
                          ),
                        ],
                        sectionsSpace: 2,
                        centerSpaceRadius: 50,
                      ),
                    ),
                  ),
                  const SizedBox(height: 60),

                  // Диаграмма по улицам
                  Text('Топ улиц по количеству клиентов',
                      style: Theme.of(context).textTheme.titleLarge),
                  const SizedBox(height: 60),
                  SizedBox(
                    height: 200,
                    child: PieChart(
                      PieChartData(
                        sections: top10Streets.map((entry) {
                          final index = top10Streets.toList().indexOf(entry);
                          return PieChartSectionData(
                            value: entry.value.toDouble(),
                            title: '${entry.key}: ${entry.value}',
                            color: Colors
                                .primaries[index % Colors.primaries.length],
                            radius: 100,
                          );
                        }).toList(),
                        sectionsSpace: 2,
                        centerSpaceRadius: 50,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
