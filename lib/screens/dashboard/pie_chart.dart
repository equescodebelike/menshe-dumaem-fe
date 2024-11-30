import 'package:admin/constants.dart';
import 'package:admin/data/models/client_list_dto.dart';
import 'package:admin/di/app_components.dart';
import 'package:admin/screens/dashboard/controllers/menu_app_controller.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PieChartExample extends StatefulWidget {
  const PieChartExample({super.key});

  @override
  State<PieChartExample> createState() => _PieChartExampleState();
}

class _PieChartExampleState extends State<PieChartExample> {
  final repository = AppComponents().tableRepository;
  int _selectedStreetCount = 6; // Значение по умолчанию

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: repository.getTable(),
      builder: (BuildContext context, AsyncSnapshot<ClientListDto> snapshot) {
        if (snapshot.hasData && snapshot.data != null) {
          final clients = snapshot.data!.clients ?? [];
          final maleCount =
              clients.where((client) => client.gender == true).length;
          final femaleCount =
              clients.where((client) => client.gender == false).length;

          String extractStreet(String? address) {
            if (address == null || address.isEmpty) return 'Неизвестная улица';
            final match = RegExp(r'^([^,]+),').firstMatch(address);
            return match?.group(1)?.trim() ?? 'Неизвестная улица';
          }

          final streetCount = <String, int>{};
          for (final client in clients) {
            final street = extractStreet(client.address?.address);
            streetCount[street] = (streetCount[street] ?? 0) + 1;
          }

          final topStreets = streetCount.entries.toList()
            ..sort((a, b) => b.value.compareTo(a.value));
          final limitedTopStreets =
              topStreets.take(_selectedStreetCount.clamp(1, 8));

          return Scaffold(
            appBar: AppBar(
              title: Text('Статистика клиентов'),
              backgroundColor: secondaryColor,
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(defaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MediaQuery.of(context).size.width < 1100
                        ? Row(
                            children: [
                              GestureDetector(
                                onTap: context
                                    .read<MenuAppController>()
                                    .controlMenu,
                                child: const Icon(
                                  Icons.menu,
                                ),
                              ),
                            ],
                          )
                        : const SizedBox.shrink(),
                    Text(
                      'Диаграмма разделения по полу',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(height: 20),
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
                    const SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MediaQuery.of(context).size.width < 1100
                            ? SizedBox.shrink()
                            : Text(
                                'Топ улиц по количеству клиентов',
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                        DropdownButton<int>(
                          value: _selectedStreetCount,
                          items: List.generate(
                            8,
                            (index) => DropdownMenuItem(
                              value: index + 1,
                              child: Text('${index + 1}'),
                            ),
                          ),
                          onChanged: (value) {
                            if (value != null) {
                              setState(() {
                                _selectedStreetCount = value;
                              });
                            }
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      height: 200,
                      child: PieChart(
                        PieChartData(
                          sections: limitedTopStreets.map((entry) {
                            final index =
                                limitedTopStreets.toList().indexOf(entry);
                            return PieChartSectionData(
                              value: entry.value.toDouble(),
                              title: '${entry.key}: ${entry.value}',
                              color: Colors
                                  .primaries[index % Colors.primaries.length],
                              radius: 100,
                            );
                          }).toList(),
                          sectionsSpace: 2,
                          centerSpaceRadius: 80,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          );
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
