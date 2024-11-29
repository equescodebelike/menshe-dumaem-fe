import 'package:admin/constants.dart';
import 'package:admin/screens/dashboard/controllers/menu_app_controller.dart';
import 'package:admin/screens/dashboard/address_table.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class PieChartExample extends StatelessWidget {
  const PieChartExample({super.key});

  @override
  Widget build(BuildContext context) {
    final data = testClientList.clients ?? [];

    final maleCount = data.where((client) => client.gender == true).length;
    final femaleCount = data.where((client) => client.gender == false).length;

    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MediaQuery.of(context).size.width < 1100
              ? Row(
                  children: [
                    
                    GestureDetector(
                      onTap: context.read<MenuAppController>().controlMenu,
                      child: Icon(
                        Icons.menu,
                      ),
                    ),
                  ],
                )
              : Text('Диграмма разделения по полу'),
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
        ],
      ),
    );
  }
}
