import 'package:admin/screens/dashboard/controllers/menu_app_controller.dart';
import 'package:admin/responsive.dart';
import 'package:admin/screens/dashboard/dashboard_screen.dart';
import 'package:admin/screens/dashboard/pie_chart.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'components/side_menu.dart';

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedScreenIndex = 0;

  final List<Widget> _screens = [
    DashboardScreen(),
    PieChartExample(),
  ];

  void _updateScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key:context.read<MenuAppController>().scaffoldKey,
      drawer: SideMenu(onSelectScreen: _updateScreen),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Боковое меню для больших экранов
            if (Responsive.isDesktop(context))
              Expanded(
                child: SideMenu(onSelectScreen: _updateScreen),
              ),
            // Основной экран
            Expanded(
              flex: 5,
              child: _screens[_selectedScreenIndex],
            ),
          ],
        ),
      ),
    );
  }
}
