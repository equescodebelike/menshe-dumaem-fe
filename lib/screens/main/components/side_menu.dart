import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SideMenu extends StatelessWidget {
  final Function(int) onSelectScreen; // Callback для переключения экранов

  const SideMenu({
    required this.onSelectScreen,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Align(
              alignment: Alignment.center,
              child: Image.asset('assets/images/logo.png'),
            ),
          ),
          DrawerListTile(
            title: "Пользователи по адресам",
            svgSrc: "assets/icons/menu_dashboard.svg",
            press: () => onSelectScreen(0),
          ),
          DrawerListTile(
            title: "Аналитика по адресам",
            svgSrc: "assets/icons/menu_task.svg",
            press: () => onSelectScreen(2),
          ),
          GestureDetector(
            child: DrawerListTile(
              title: "Самые популярные передачи",
              svgSrc: "assets/icons/menu_dashboard.svg",
              press: () => onSelectScreen(1),
            ),
          ),
          DrawerListTile(
            title: "Аналитика по просмотрам",
            svgSrc: 'assets/icons/menu_task.svg',
            press: () => onSelectScreen(4),
          ),
          DrawerListTile(
            title: "Карта",
            svgSrc: 'assets/icons/map.svg',
            press: () => onSelectScreen(3),
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  final String title;
  final String svgSrc;
  final VoidCallback press;

  const DrawerListTile({
    Key? key,
    required this.title,
    required this.svgSrc,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgSrc,
        colorFilter: ColorFilter.mode(Colors.white54, BlendMode.srcIn),
        height: 16,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.white54),
      ),
    );
  }
}
