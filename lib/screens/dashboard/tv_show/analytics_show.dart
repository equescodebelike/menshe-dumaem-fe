import 'package:admin/data/models/tv_shows_dto.dart';
import 'package:admin/di/app_components.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:provider/provider.dart';

import '../controllers/menu_app_controller.dart';

class PopularShowsPieChart extends StatelessWidget {
  final TvShowsDto shows;

  const PopularShowsPieChart({required this.shows});

  @override
  Widget build(BuildContext context) {
    final tvShows = shows.tvShows ?? [];
    final totalViews =
        tvShows.fold<int>(0, (sum, show) => sum + (show.viewCount ?? 0));

    return PieChart(
      PieChartData(
        sections: tvShows.map((show) {
          final percentage = ((show.viewCount ?? 0) / totalViews) * 100;
          return PieChartSectionData(
            title: '${show.id} (${percentage.toStringAsFixed(1)}%)',
            value: show.viewCount?.toDouble(),
            color: Colors
                .primaries[tvShows.indexOf(show) % Colors.primaries.length],
          );
        }).toList(),
        sectionsSpace: 2,
        centerSpaceRadius: 100,
      ),
    );
  }
}

class PopularShowsBarChart extends StatelessWidget {
  final TvShowsDto shows;

  const PopularShowsBarChart({required this.shows});

  @override
  Widget build(BuildContext context) {
    final tvShows = shows.tvShows ?? [];

    return BarChart(
      BarChartData(
        barGroups: tvShows.map((show) {
          return BarChartGroupData(
            x: tvShows.indexOf(show),
            barRods: [
              BarChartRodData(
                toY: (show.viewCount ?? 0).toDouble(),
                color: Colors.blueAccent,
              ),
            ],
          );
        }).toList(),
        titlesData: FlTitlesData(
          leftTitles: AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: (index, _) {
                final show = tvShows[index.toInt()];
                return Text(show.id.toString() ?? '');
              },
            ),
          ),
        ),
        borderData: FlBorderData(show: false),
      ),
    );
  }
}

class PopularShowsScreen extends StatefulWidget {
  const PopularShowsScreen({Key? key}) : super(key: key);

  @override
  State<PopularShowsScreen> createState() => _PopularShowsScreenState();
}

class _PopularShowsScreenState extends State<PopularShowsScreen> {
  final repository = AppComponents().tableRepository;
  int _selectedItemCount = 5; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: MediaQuery.of(context).size.width < 1100
            ? Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: GestureDetector(
                      onTap: context.read<MenuAppController>().controlMenu,
                      child: Icon(Icons.menu),
                    ),
                  ),
                ],
              )
            : SizedBox.shrink(),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MediaQuery.of(context).size.width < 1100 ? const Text(
                  'Количество программ для\nотображения:',
                  style: TextStyle(fontSize: 16),
                ) :
                const Text(
                  'Количество программ для отображения:',
                  style: TextStyle(fontSize: 16),
                ),
                DropdownButton<int>(
                  value: _selectedItemCount,
                  items: List.generate(
                    15,
                    (index) => DropdownMenuItem(
                      value: index + 1,
                      child: Text('${index + 1}'),
                    ),
                  ),
                  onChanged: (value) {
                    if (value != null) {
                      setState(() {
                        _selectedItemCount = value;
                      });
                    }
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: FutureBuilder<TvShowsDto>(
              future: repository.fetchAndProcessPopularShows(_selectedItemCount),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.error, color: Colors.red, size: 50),
                        const SizedBox(height: 10),
                        Text(
                          'Error: ${snapshot.error}',
                          textAlign: TextAlign.center,
                          style: const TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  );
                } else if (snapshot.hasData) {
                  final data = snapshot.data!;
                  return SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(height: 20),
                        const Text(
                          'ID программ по просмотрам',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 10),
                        SizedBox(
                          height: 300,
                          child: PopularShowsPieChart(shows: data),
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          'ID программ по просмотрам',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 10),
                        SizedBox(
                          height: 300,
                          child: PopularShowsBarChart(shows: data),
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  );
                } else {
                  return const Center(child: Text('No data available'));
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}

